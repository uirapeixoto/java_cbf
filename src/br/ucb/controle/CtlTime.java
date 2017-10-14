package br.ucb.controle;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import br.ucb.modelo.Campeonato;
import br.ucb.modelo.Time;

@WebServlet("/ctlTime")
public class CtlTime extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		RequestDispatcher dispatcher = request.getRequestDispatcher("times.jsp");
		Campeonato campeonato = (Campeonato) this.getServletContext().getAttribute("campeonato");
		if (campeonato == null) {
			campeonato = new Campeonato();
			this.getServletContext().setAttribute("campeonato", campeonato);
		}
		Time time = new Time();
		time.setNome(request.getParameter("nome"));
		campeonato.adicionarTime(time);
		dispatcher.forward(request, response);
	}

}
