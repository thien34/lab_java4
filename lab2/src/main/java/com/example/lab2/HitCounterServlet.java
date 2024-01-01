package com.example.lab2;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

import java.io.IOException;
import java.nio.file.Files;
import java.nio.file.Path;
import java.nio.file.Paths;
import java.nio.file.StandardOpenOption;

@WebServlet(name = "HitCounterServlet", value = "/count")
public class HitCounterServlet extends HttpServlet {
    int count;
    Path path = Paths.get("d:/count.txt");
    @Override
    public void init() throws ServletException {
        try {
            count = Integer.parseInt(Files.readAllLines(path).get(0));
        } catch (IOException e) {
            throw new RuntimeException(e);
        }
    }

    @Override
    protected void service(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        count ++;
        req.setAttribute("count", count);
        req.getRequestDispatcher("/views/hit-counter.jsp").forward(req, resp);
    }

    @Override
    public void destroy() {
        try {
            Files.write(path, String.valueOf(count).getBytes(), StandardOpenOption.WRITE);
        } catch (IOException e) {
            throw new RuntimeException(e);
        }
    }
}