package model;

import java.sql.Date;

public class Ordine {
	private int id;
	private Tipo_Ordine tipo_ordine;
	private Tipo_Pagamento tipo_pagamento;
	private double prezzo_totale;
	private Date data_ordine;
	private String user;
	
	public Ordine() {
		super();
	}
	
	public Ordine(int id, Tipo_Ordine tipo_ordine, Tipo_Pagamento tipo_pagamento, double prezzo_totale,
			Date data_ordine, String user) {
		super();
		this.id = id;
		this.tipo_ordine = tipo_ordine;
		this.tipo_pagamento = tipo_pagamento;
		this.prezzo_totale = prezzo_totale;
		this.data_ordine = data_ordine;
		this.user = user;
	}
	public int getId() {
		return id;
	}
	public void setId(int id) {
		this.id = id;
	}
	public Tipo_Ordine getTipo_ordine() {
		return tipo_ordine;
	}
	public void setTipo_ordine(Tipo_Ordine tipo_ordine) {
		this.tipo_ordine = tipo_ordine;
	}
	public Tipo_Pagamento getTipo_pagamento() {
		return tipo_pagamento;
	}
	public void setTipo_pagamento(Tipo_Pagamento tipo_pagamento) {
		this.tipo_pagamento = tipo_pagamento;
	}
	public double getPrezzo_totale() {
		return prezzo_totale;
	}
	public void setPrezzo_totale(double prezzo_totale) {
		this.prezzo_totale = prezzo_totale;
	}
	public Date getData_ordine() {
		return data_ordine;
	}
	public void setData_ordine(Date data_ordine) {
		this.data_ordine = data_ordine;
	}
	public String getUser() {
		return user;
	}
	public void setUser(String user) {
		this.user = user;
	}
	
	
}
