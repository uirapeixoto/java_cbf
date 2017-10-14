package br.ucb.modelo;

import java.io.Serializable;
import java.util.ArrayList;
import java.util.List;

public class Campeonato implements Serializable {
	private static final long serialVersionUID = 1L;
	private List<Time> times;
	private List<Jogo> jogos;
	
	public Campeonato() {
		this.times = new ArrayList<Time>();
		this.jogos = new ArrayList<Jogo>();
	}
	
	public void adicionarJogo(Time time1, Time time2, int golsTime1, int golsTime2) {
		Jogo jogo = new Jogo();
		jogo.setTime1(time1);
		jogo.setTime2(time2);
		jogo.setGolsTime1(golsTime1);
		jogo.setGolsTime2(golsTime2);
		this.jogos.add(jogo);
		jogo.apurar();
	}
	
	public void adicionarTime(Time time) {
		this.times.add(time);
	}
	
	public List<Time> getTimes() {
		return times;
	}

	public void setTimes(List<Time> times) {
		this.times = times;
	}

	public List<Jogo> getJogos() {
		return jogos;
	}

	public void setJogos(List<Jogo> jogos) {
		this.jogos = jogos;
	}

}
