package models.entidades;

import java.util.List;

import java.util.*;
import javax.persistence.*;

import io.ebean.*;
import play.data.format.*;
import play.data.validation.*;

@Entity
public class Restaurante extends Model{
	
	@Id
	public String id;
	
	public String nome;

	public String latitude;

	public String longitude;

	public Restaurante(String id, String nome, String latitude, String longitude) {
		this.id = id;
		this.nome = nome;
		this.latitude = latitude;
		this.longitude = longitude;
	}
	
	public String getId() {
		return id;
	}

	public String getNome() {
		return nome;
	}

	public String getLatitude() {
		return latitude;
	}

	public String getLongitude() {
		return longitude;
	}
	
	

}
