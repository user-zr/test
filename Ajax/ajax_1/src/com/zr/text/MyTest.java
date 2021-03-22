package com.zr.text;


import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.io.PrintWriter;

@WebServlet("/test")
public class MyTest extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
//        System.out.println("接受请求");
        String name = req.getParameter("name");
        String weight = req.getParameter("weight");
        String height = req.getParameter("height");

        Double w = Double.valueOf(weight);
        Double h = Double.valueOf(height);

        double bmi = w / (h * h);
        String msg = "";
        if (bmi <= 18.0) {
            msg = "瘦的";
        }
        else {
            msg = "胖的";
        }

        resp.setContentType("text/html;charset=utf-8");
        PrintWriter pw = resp.getWriter();
        pw.print(name + " bmi: " + msg);
        pw.flush();
        pw.close();

        req.getRequestDispatcher("/test.jsp").forward(req,resp);
    }
}
