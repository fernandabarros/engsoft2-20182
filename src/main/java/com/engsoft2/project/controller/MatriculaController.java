package com.engsoft2.project.controller;

import java.util.ArrayList;
import java.util.List;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

@Controller
public class MatriculaController {
	
	@GetMapping("/aluno/transferencia")
    public String transferPage(Model model) {
		List<String> cities = new ArrayList<String>();
		cities.add("Salvador");
		cities.add("Feira de Santana");
		cities.add("Camaçari");
		
		model.addAttribute("cities", cities);
		
        return "transfer";
    }
	
	@ResponseBody
	@GetMapping("/getNeighborhoods")
    public List<String> getNeighborhoods(@RequestParam(name="city", required=true) String city) {
		List<String> neighborhoods = new ArrayList<String>();
		
		switch (city) {		
			case "Salvador":
				neighborhoods.add("Barbalho");
				neighborhoods.add("Barra");
				neighborhoods.add("Ondina");
				break;
			case "Feira de Santana":
				neighborhoods.add("Lagoa Grande");
				neighborhoods.add("Pedra Ferrada");
				neighborhoods.add("Campo Limpo");
				break;
			case "Camaçari":
				neighborhoods.add("Parque Satélite");
				neighborhoods.add("Ponto Certo");
				neighborhoods.add("Gravatá");
				break;
			default:
				
		}
		
        return neighborhoods;
    }
	
	@ResponseBody
	@GetMapping("/getSchools")
    public List<String> getSchools(@RequestParam(name="neighborhood", required=true) String neighborhood) {
		List<String> schools = new ArrayList<String>();
		
		switch (neighborhood) {		
			case "Barbalho":
				schools.add("Uma escola");
				schools.add("Outra escola");
				break;
			case "Barra":
				schools.add("Uma escola");
				schools.add("Outra escola");
				break;
			case "Ondina":
				schools.add("Uma escola");
				schools.add("Outra escola");
				break;
			default:
				schools.add("Uma escola");
				schools.add("Outra escola");
		}
		
        return schools;
    }
}
