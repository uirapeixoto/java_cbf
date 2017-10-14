package br.ucb.modelo;

import java.io.Serializable;

public class Jogo implements Serializable {
	private static final long serialVersionUID = 1L;
	private Time time1;
	private int golsTime1;
	private Time time2;
	private int golsTime2;
	
	public Jogo() {
	}

	public void apurar() {
		if (this.getGolsTime1() > this.golsTime2)
			this.time1.adicionarPontos(3);
		else {
			if (this.getGolsTime2() > this.golsTime1)
				this.time2.adicionarPontos(3);
			else {
				this.time1.adicionarPontos(1);
				this.time2.adicionarPontos(1);
			}
		}
	}

	public Time getTime1() {
		return time1;
	}

	public void setTime1(Time time1) {
		this.time1 = time1;
	}

	public int getGolsTime1() {
		return golsTime1;
	}

	public void setGolsTime1(int golsTime1) {
		this.golsTime1 = golsTime1;
	}

	public Time getTime2() {
		return time2;
	}

	public void setTime2(Time time2) {
		this.time2 = time2;
	}

	public int getGolsTime2() {
		return golsTime2;
	}

	public void setGolsTime2(int golsTime2) {
		this.golsTime2 = golsTime2;
	}

}
