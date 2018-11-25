package com.engsoft2.project.controller;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestParam;

@Controller
public class MatriculaController {
	
	@GetMapping("/aluno/transferencia")
    public String greeting(@RequestParam(name="name", required=false, defaultValue="Fulano") String name, Model model) {
        model.addAttribute("name", name);
        return "transfer";
    }
}
