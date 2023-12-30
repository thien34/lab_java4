package com.example.lab2;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

import java.io.IOException;

@WebServlet(name = "TamGiacServlet", value = {"/tam-giac", "/dien-tich", "/chu-vi"})
public class TamGiacServlet extends HttpServlet {

    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        req.getRequestDispatcher("views/tam-giac.jsp").forward(req, resp);
    }

    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        double a, b, c;
        try {
            a = Double.parseDouble(req.getParameter("a"));
            b = Double.parseDouble(req.getParameter("b"));
            c = Double.parseDouble(req.getParameter("c"));
            if ((a + b > c) && (a + c > b) && (b + c > a)) {
                String uri = req.getRequestURI();
                double chuVi = a + b + c;
                if (uri.contains("dien-tich")) {
                    double nua = chuVi / 2;
                    double dienTich = Math.sqrt(nua * (nua - a) * (nua - b) * (nua - c));
                    req.setAttribute("msg", "Dien tich la: " + dienTich);
                }
                if (uri.contains("chu-vi")) {
                    req.setAttribute("msg", "Chu vi la: " + chuVi);
                }
            } else {
                req.setAttribute("msg", "Không thỏa mãn tam giác");
            }
            req.getRequestDispatcher("views/tam-giac.jsp").forward(req, resp);
        } catch (Exception e) {
            req.setAttribute("msg", "Sai dinh dang");
        }
    }

}