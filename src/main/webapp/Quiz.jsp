<%@ page import="java.util.*" %>
<%
List<Map<String, String>> questions = (List<Map<String, String>>) request.getAttribute("questions");
int totalQuestions = questions != null ? questions.size() : 0;
%>

<!DOCTYPE html>
<html>
<head>
    <title>Online Quiz</title>
    <style>
        body {
            font-family: Arial, sans-serif;
            background: linear-gradient(135deg, #667eea 0%, #764ba2 100%);
            margin: 0;
            padding: 20px;
            min-height: 100vh;
        }
        
        .quiz-container {
            max-width: 800px;
            margin: 0 auto;
            background: white;
            padding: 30px;
            border-radius: 15px;
            box-shadow: 0 10px 30px rgba(0,0,0,0.3);
        }
        
        .timer {
            background: #ff4757;
            color: white;
            padding: 15px;
            border-radius: 10px;
            text-align: center;
            font-size: 24px;
            font-weight: bold;
            margin-bottom: 20px;
        }
        
        .question-counter {
            text-align: center;
            color: #6c757d;
            margin: 10px 0;
            font-size: 18px;
        }
        
        .question {
            font-size: 20px;
            margin-bottom: 20px;
            color: #2f3542;
            padding: 15px;
            background: #f8f9fa;
            border-radius: 8px;
        }
        
        .options {
            margin: 20px 0;
        }
        
        .option {
            display: block;
            margin: 15px 0;
            padding: 15px;
            background: #f8f9fa;
            border: 2px solid #e9ecef;
            border-radius: 8px;
            cursor: pointer;
            transition: all 0.3s;
        }
        
        .option:hover {
            background: #e3f2fd;
            border-color: #2196f3;
        }
        
        .option input {
            margin-right: 10px;
        }
        
        .btn-submit {
            background: #28a745;
            color: white;
            padding: 12px 30px;
            border: none;
            border-radius: 8px;
            font-size: 16px;
            cursor: pointer;
            display: block;
            margin: 20px auto;
            transition: all 0.3s;
        }
        
        .btn-submit:hover {
            background: #218838;
            transform: translateY(-2px);
        }
        
        .no-questions {
            text-align: center;
            color: #dc3545;
            font-size: 18px;
            padding: 20px;
        }
    </style>
</head>
<body>
    <div class="quiz-container">
        <!-- Timer -->
        <div class="timer" id="timer">
            Time: 10:00
        </div>
        
        <% if(totalQuestions == 0) { %>
            <div class="no-questions">
                <h3>No questions available in the database.</h3>
                <p>Please check your database connection and ensure questions are added to the questionbank table.</p>
            </div>
        <% } else { %>
        
            <div class="question-counter">
                Total Questions: <%= totalQuestions %>
            </div>
            
            <form action="ResultServlet" method="post">
                <input type="hidden" name="total" value="<%= totalQuestions %>">
                
                <% 
                int i = 0;
                for (Map<String, String> q : questions) { 
                %>
                    <div class="question">
                        <b>Q<%= i+1 %>. <%= q.get("question") %></b>
                    </div>
                    
                    <div class="options">
                        <label class="option">
                            <input type="radio" name="ans<%= i %>" value="<%= q.get("option1") %>" required>
                            <%= q.get("option1") %>
                        </label>
                        <label class="option">
                            <input type="radio" name="ans<%= i %>" value="<%= q.get("option2") %>">
                            <%= q.get("option2") %>
                        </label>
                        <label class="option">
                            <input type="radio" name="ans<%= i %>" value="<%= q.get("option3") %>">
                            <%= q.get("option3") %>
                        </label>
                        <label class="option">
                            <input type="radio" name="ans<%= i %>" value="<%= q.get("option4") %>">
                            <%= q.get("option4") %>
                        </label>
                    </div>
                    
                    <input type="hidden" name="correct<%= i %>" value="<%= q.get("correct_answer") %>">
                    
                <% 
                    i++;
                } 
                %>
                
                <button type="submit" class="btn-submit">Submit Quiz</button>
            </form>
        <% } %>
    </div>

    <script>
        // Timer functionality - 10 minutes
        let timeLeft = 600;
        const timer = setInterval(() => {
            timeLeft--;
            let minutes = Math.floor(timeLeft / 60);
            let seconds = timeLeft % 60;
            seconds = seconds < 10 ? '0' + seconds : seconds;
            document.getElementById('timer').innerHTML = 'Time: ' + minutes + ':' + seconds;
            
            if(timeLeft <= 0) {
                clearInterval(timer);
                document.forms[0].submit();
            }
        }, 1000);
        
        // Auto-save when option selected (optional)
        document.querySelectorAll('input[type="radio"]').forEach(radio => {
            radio.addEventListener('change', function() {
                console.log('Answer selected:', this.value);
            });
        });
    </script>
</body>
</html>