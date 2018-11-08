package models.controladores;

import java.util.ArrayList;
import java.util.List;

import models.cadastros.CadastroRestaurante;
import models.entidades.Restaurante;

public class ControladorRestaurante {
	
	private CadastroRestaurante cadastroRestaurante;

	public ControladorRestaurante(){
		cadastroRestaurante = new CadastroRestaurante();
	}
	
	public Restaurante getRestaurante(String id){
		return cadastroRestaurante.recuperarRestaurante(id);
	}
	
	public List<Restaurante> restaurantes() {

		return cadastroRestaurante.recuperarRestaurantes();
	}

	public void criarRestaurante(Restaurante r){
		cadastroRestaurante.atualizarRestaurante(r);
	}


}
