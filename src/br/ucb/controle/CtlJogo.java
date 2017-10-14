package br.ucb.controle;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import br.ucb.modelo.Campeonato;
import br.ucb.modelo.Jogo;
import br.ucb.modelo.Time;

/**
 * Servlet implementation class CtlJogo
 */
@WebServlet("/ctlJogo")
public class CtlJogo extends HttpServlet {
	private static final long serialVersionUID = 1L;
     
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		RequestDispatcher dispatcher = request.getRequestDispatcher("jogos.jsp");
		Campeonato campeonato = (Campeonato) this.getServletContext().getAttribute("campeonato");
		if (campeonato == null) {
			campeonato = new Campeonato();
			this.getServletContext().setAttribute("campeonato", campeonato);
		}
		
		Time time1 = new Time();
		time1 = campeonato.getTimes().get(Integer.parseInt(request.getParameter("time1")));
		
		Time time2 = new Time();
		time2 = campeonato.getTimes().get(Integer.parseInt(request.getParameter("time2")));
		
		Integer golsTime1 = Integer.parseInt(request.getParameter("gols1"));
		Integer golsTime2 = Integer.parseInt(request.getParameter("gols2"));
		
		time1.setGolsPro(golsTime1);
		time1.setGolsContra(golsTime2);
		
		time2.setGolsPro(golsTime2);
		time2.setGolsContra(golsTime1);
		
		if(golsTime1 > golsTime2) {
			time1.addVitorias();
			time2.addDerrotas();
		}else if(golsTime1 < golsTime2) {
			time1.addDerrotas();
			time2.addVitorias();
		}else if(golsTime1 == golsTime2) {
			time1.addEmpates();
			time2.addEmpates();
		}
				
		campeonato.adicionarJogo(time1, time2, golsTime1, golsTime2);
		
		dispatcher.forward(request, response);
	}

}
