package dao;

import java.util.*;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

public class QuestionDAO {
    public List<Map<String, String>> getAllQuestions() {
        List<Map<String, String>> questions = new ArrayList<>();
        try (Connection con = DBConnection.getConn();
             PreparedStatement ps = con.prepareStatement("SELECT * FROM questionbank");
             ResultSet rs = ps.executeQuery()) {

            while (rs.next()) {
                Map<String, String> q = new HashMap<>();
                q.put("id", rs.getString("id"));
                q.put("question", rs.getString("question"));
                q.put("option1", rs.getString("option1"));
                q.put("option2", rs.getString("option2"));
                q.put("option3", rs.getString("option3"));
                q.put("option4", rs.getString("option4"));
                q.put("correct_answer", rs.getString("correctoption"));
                questions.add(q);
            }
        } catch (Exception e) {
            e.printStackTrace();
        }
        return questions;
    }
}