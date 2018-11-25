package com.engsoft2.project.controller;

import java.util.ArrayList;
import java.util.List;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;

@Controller
public class MatriculaController {
	
	@GetMapping("/aluno/transferencia")
    public String transferPage(Model model) {
		List<String> cities = new ArrayList<String>();
		cities.add("Salvador");
		cities.add("Feira de Santana");
		cities.add("Camaçari");
		cities.add("Porto Seguro");
		cities.add("Ilhéus");
		cities.add("Paulo Afonso");
		
		model.addAttribute("cities", cities);
		
        return "transfer";
    }
}
