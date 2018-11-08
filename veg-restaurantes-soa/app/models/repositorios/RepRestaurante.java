package models.repositorios;

import java.util.List;

import models.entidades.Restaurante;
import io.ebean.*;

public class RepRestaurante implements IRep<Restaurante>{
	
	public Finder<String, Restaurante> restauranteFinder;
	
	public RepRestaurante(){
		restauranteFinder = new Finder<String, Restaurante>(Restaurante.class);
	}
	
	public List<Restaurante> all(){
		return restauranteFinder.all();
	}
	
	public Restaurante findId(String id){
		return restauranteFinder.byId(id);
	}
	
	public void save(Restaurante restaurante){
		restaurante.save();
	}
	
	public void delete(String  id){
		restauranteFinder.ref(id).delete();
	}

}
