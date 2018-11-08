package models;

import java.util.List;

import models.controladores.ControladorRestaurante;
import models.entidades.Restaurante;

public class Fachada {
	
	private ControladorRestaurante controladorRestaurante;
	private static Fachada instance; 

	private Fachada(){
		controladorRestaurante = new ControladorRestaurante();
	}
	
	public static Fachada getInstance(){
		if(instance == null){
			instance = new Fachada();
		}
		return instance;
	}

	public Restaurante getRestaurante(String idRestaurante){
		return controladorRestaurante.getRestaurante(idRestaurante);
	}

	public void criarRestaurante(Restaurante r){
		controladorRestaurante.criarRestaurante(r);
	}
	
	public List<Restaurante> restaurantes(){
		return controladorRestaurante.restaurantes();
	}
}
