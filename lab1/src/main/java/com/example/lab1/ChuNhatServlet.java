package com.example.lab1;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

import java.io.IOException;

@WebServlet(name = "ChuNhatServlet", value = "/tinh")
public class ChuNhatServlet extends HttpServlet {

    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {

        req.getRequestDispatcher("/views/tinh/form.jsp").forward(req, resp);
    }

    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        String dai_raw = req.getParameter("dai");
        String rong_raw = req.getParameter("rong");
        Double a, b;
        try {
            a = Double.parseDouble(dai_raw);
            b = Double.parseDouble(rong_raw);
            req.setAttribute("s", a*b);
            req.setAttribute("p", (a+b)*2);
        } catch (Exception e) {
            e.printStackTrace();
        }
        req.getRequestDispatcher("/views/tinh/success.jsp").forward(req, resp);
    }

}