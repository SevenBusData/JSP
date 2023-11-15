package com.seven.servlet;

import com.seven.domain.Produce;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.util.ArrayList;
import java.util.List;

@WebServlet(name = "getProduce", urlPatterns = "/getProduce")
public class GetProduceServlet extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        this.doPost(req, resp);
    }

    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        List<Produce> list = new ArrayList<>();
        Produce produce1 = new Produce(1, "水笔", 2);
        Produce produce2 = new Produce(2, "本子", 2);
        Produce produce3 = new Produce(3, "文具盒", 10);

        req.setAttribute("produceList", list);

        req.getRequestDispatcher("/produceList.jsp").forward(req, resp);
    }
}
