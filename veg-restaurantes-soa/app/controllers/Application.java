package controllers;

import play.mvc.*;
import java.util.List;

import views.html.restaurante;
import views.html.restaurantes;
import models.entidades.Restaurante;
import models.Fachada;


public class Application extends Controller {

   	public Result restaurante(String id) {
		Fachada fachada = Fachada.getInstance();
		Restaurante r = fachada.getRestaurante(id);
        return ok(restaurante.render(r));
   	}

   	public Result restaurantes() {
		Fachada fachada = Fachada.getInstance();
		List<Restaurante> restaurantes = fachada.restaurantes();

		if(restaurantes.size() == 0) {
			Restaurante r1 = new Restaurante("1", "Jazzlato", "8.2321", "5.5254");
			Restaurante r2 = new Restaurante("2", "Pizzalize", "5.2321", "1.5254");
			Restaurante r3 = new Restaurante("3", "Verde Jaca", "5.7325", "1.4243");
			fachada.criarRestaurante(r1);
			fachada.criarRestaurante(r2);
			fachada.criarRestaurante(r3);
			restaurantes = fachada.restaurantes();
		}

   		return ok(views.html.restaurantes.render(restaurantes));
   	}
}
