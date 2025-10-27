package Controller;

import java.io.IOException;
import java.util.List;
import java.util.Map;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import dao.QuestionDAO;

public class QuizServlet extends HttpServlet {
    
    public void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        // Load first question
        loadQuestions(request, response);
    }

    public void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        // Handle navigation between questions
        loadQuestions(request, response);
    }

    private void loadQuestions(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        
        QuestionDAO dao = new QuestionDAO();
        List<Map<String, String>> questions = dao.getAllQuestions();
        
        if(questions == null || questions.isEmpty()) {
            questions = new java.util.ArrayList<>();
        }
        
        request.setAttribute("questions", questions);
        RequestDispatcher rd = request.getRequestDispatcher("Quiz.jsp");
        rd.forward(request, response);
    }
}