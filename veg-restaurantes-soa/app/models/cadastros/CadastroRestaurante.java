package models.cadastros;

import java.util.List;

import models.entidades.Restaurante;
import models.repositorios.IRep;
import models.repositorios.RepRestaurante;

public class CadastroRestaurante {
	
	private IRep<Restaurante> repRestaurante;

	public CadastroRestaurante(){
		repRestaurante = new RepRestaurante();
	}
	
	public void atualizarRestaurante(Restaurante restaurante){
		repRestaurante.save(restaurante);
	}
	
	public Restaurante recuperarRestaurante(String id){
		return repRestaurante.findId(id);
	}
	
	public List<Restaurante> recuperarRestaurantes(){
		return repRestaurante.all();
	}
}
