package br.ucb.modelo;

import java.io.Serializable;

public class Time implements Serializable {
	private static final long serialVersionUID = 1L;
	private String nome;
	private Integer totalPontos = 0;
	private Integer golsPro = 0;
	private Integer golsContra = 0;
	private Integer derrotas = 0;
	private Integer vitorias = 0;
	private Integer empates = 0;
	
	public Time() {
	}
	
	public void adicionarPontos(int pontos) {
		this.totalPontos += pontos;
	}

	public String getNome() {
		return nome;
	}

	public void setNome(String nome) {
		this.nome = nome;
	}

	public Integer getTotalPontos() {
		return totalPontos;
	}
	
	public Integer getGolsPro() {
		return golsPro;
	}

	public void setGolsPro(int golsPro) {
		this.golsPro = golsPro;
	}
		
	public Integer getGolsContra() {
		return golsContra;
	}

	public void setGolsContra(Integer golsContra) {
		this.golsContra = golsContra;
	}

	public static long getSerialversionuid() {
		return serialVersionUID;
	}

	public Integer getDerrotas() {
		return derrotas;
	}

	public Integer getVitorias() {
		return vitorias;
	}

	public Integer getEmpates() {
		return empates;
	}

	public void addGolsPro(Integer golspro) {
		this.golsPro += golspro;
	}
	
	public void addDerrotas() {
        this.derrotas++;
    }
	
	public void addVitorias() {
        this.vitorias++;
    }
	
	public void addEmpates() {
        this.empates++;
    }
	
	public Integer getPontos() {
        return (this.vitorias * 3) + (this.empates);
    }
	
	public Integer getSaldoGols() {
        return this.golsPro - this.golsContra;
    }
}

