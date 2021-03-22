package com.zr;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;

@WebServlet("/one")
public class BMIServlet extends HttpServlet {
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String name = request.getParameter("n");
        String weight = request.getParameter("w");
        String height = request.getParameter("h");

        float w = Float.valueOf(weight);
        float h = Float.valueOf(height);
        float bmi = w / (h * h);
        String msg="";
        if (bmi<=18.5){
            msg="瘦的";
        }else {
            msg="胖的";
        }

        request.setAttribute("msg",msg);
        request.getRequestDispatcher("/result.jsp").forward(request,response);
    }
}
