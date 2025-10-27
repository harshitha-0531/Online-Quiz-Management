<%
int score = (Integer) request.getAttribute("score");
int total = (Integer) request.getAttribute("total");
%>

<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">

<head>
    <title>Quiz Results</title>
    <style>
        body {
            font-family: Arial, sans-serif;
            background: linear-gradient(135deg, #667eea 0%, #764ba2 100%);
            margin: 0;
            padding: 20px;
            min-height: 100vh;
            display: flex;
            align-items: center;
            justify-content: center;
        }
        
        .result-container {
            background: white;
            padding: 40px;
            border-radius: 15px;
            box-shadow: 0 10px 30px rgba(0,0,0,0.3);
            text-align: center;
            max-width: 500px;
            width: 100%;
        }
        
        .score {
            font-size: 48px;
            font-weight: bold;
            color: #2ed573;
            margin: 20px 0;
        }
        
        .message {
            font-size: 18px;
            color: #6c757d;
            margin: 20px 0;
        }
        
        .btn-retry {
            background: #007bff;
            color: white;
            padding: 12px 30px;
            border: none;
            border-radius: 8px;
            font-size: 16px;
            cursor: pointer;
            text-decoration: none;
            display: inline-block;
            margin-top: 20px;
        }
        
        .btn-retry:hover {
            background: #0056b3;
        }
    </style>
</head>
<body>
    <div class="result-container">
        <h2>Quiz Completed!</h2>
        <div class="score"><%= score %> / <%= total %></div>
        <div class="message">
            <% if(score == total) { %>
                Perfect Score! Excellent work! 
            <% } else if(score >= total * 0.7) { %>
                Great job! Well done! 
            <% } else { %>
                Good effort! Keep practicing! 
            <% } %>
        </div>
        <a href="index.html" class="btn-retry">Take Quiz Again</a>
    </div>
</body>
</html>