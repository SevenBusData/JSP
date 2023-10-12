package com.feliven.web.servlet;

import javax.servlet.*;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.*;
import java.io.IOException;

@WebServlet(name = "LoginServlet", value = "/LoginServlet")
public class LoginServlet extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

    }

    @Override
    protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        //  设置客户端的编码形式
        request.setCharacterEncoding("utf-8");

        //  接受客户端传递的参数
        String uname = request.getParameter("uname");
        String password = request.getParameter("password");

        if (uname == null || "".equals(uname.trim())) {
            //  提示用户信息
            request.setAttribute("msg", "用户名不能为空");
            //  请求转发跳转到login.jsp页面
            request.getRequestDispatcher("/study/login.jsp").forward(request,response);
            return;
        }
        if (password == null || "".equals(password.trim())) {
            //  提示用户信息
            request.setAttribute("msg", "用户密码不能为空");
            //  请求转发跳转到login.jsp页面
            request.getRequestDispatcher("/study/login.jsp").forward(request,response);
            return;
        }

        //  判断账号密码是否正确 uname = admin  password = admin
        if(!"admin".equals(uname) || !"admin".equals(password)) {
            //  提示用户信息
            request.setAttribute("msg", "用户账号密码错误");
            //  请求转发跳转到login.jsp页面
            request.getRequestDispatcher("/study/login.jsp").forward(request,response);
            return;
        }

        //  登录成功，将用户信息保存到session中
        request.getSession().setAttribute("uname", uname);
        //  跳转页面
        response.sendRedirect(request.getContextPath()+"/index.jsp");
    }
}
