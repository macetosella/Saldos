package ar.com.saldos.servlets;

import ar.com.saldos.daos.MonederoDAO;
import ar.com.saldos.dtos.MonederoDTO;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.util.Collection;

@WebServlet(name = "Servlet")
public class Servlet extends HttpServlet {

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String monto_origen = request.getParameter("monto_origen");
        String monedero_origen = request.getParameter("monedero_origen");
        String monedero_destino = request.getParameter("monedero_destino");
        Float valor_destino;

        MonederoDAO monedero = new MonederoDAO();
        valor_destino = monedero.getDineroDestino(monto_origen,monedero_origen,monedero_destino);

        /*for (MonederoDTO dto : coll) {
            System.out.println(dto);
        }*/

        response.setContentType("text/plain");
        response.setCharacterEncoding("UTF-8");
        response.getWriter().write(Float.toString(valor_destino));
    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        request.getRequestDispatcher("/WEB-INF/index.jsp").forward(request, response);
    }
}

