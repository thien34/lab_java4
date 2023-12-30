package com.example.lab2;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

import java.io.IOException;

@WebServlet(name = "DangKyServlet", value = "/dang-ky")
public class DangKyServlet extends HttpServlet {

    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        req.getRequestDispatcher("/views/form.jsp").forward(req, resp);
    }

    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        String[] hobbies = req.getParameterValues("hobbies");
        StringBuilder hob = new StringBuilder();
        req.setAttribute("name", req.getParameter("name"));
        req.setAttribute("pass", req.getParameter("pass"));
        req.setAttribute("gender", req.getParameter("gender"));
        req.setAttribute("status", req.getParameter("status"));
        req.setAttribute("city", req.getParameter("city"));
        for (String hobby : hobbies) {
            hob.append(hobby);
        }
        req.setAttribute("hobbies", hob.toString());
        req.setAttribute("note", req.getParameter("note"));
        req.getRequestDispatcher("/views/result.jsp").forward(req, resp);
    }
}