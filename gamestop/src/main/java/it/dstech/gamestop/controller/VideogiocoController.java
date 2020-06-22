package it.dstech.gamestop.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;

import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import it.dstech.gamestop.model.Videogioco;
import it.dstech.gamestop.service.VideogiocoService;

@Controller
public class VideogiocoController {

	@Autowired
	private VideogiocoService videogiocoService;

	@RequestMapping(value = "/ordinamento", method = RequestMethod.POST)
	public ModelAndView index(@RequestParam("command") int command) {
		List<Videogioco> lista = videogiocoService.listAll();

		switch (command) {
		case 0: {
		
			ModelAndView mav = new ModelAndView("risultato");
			mav.addObject("lista", videogiocoService.sortByTitoloAsc());
			return mav;
			
		}
		case 1: {
			
			ModelAndView mav = new ModelAndView("risultato");
			mav.addObject("lista", videogiocoService.sortByCategoriaAsc());
			return mav;
		
		}
		case 2: {
			
			ModelAndView mav = new ModelAndView("risultato");
			mav.addObject("lista", videogiocoService.sortByPrezzoAsc());
			return mav;
			
		}
		case 3: {
			ModelAndView mav = new ModelAndView("risultato");
			mav.addObject("lista", videogiocoService.sortByClassificazionePEGIAsc());
			return mav;
			
	
		}

		default:
			ModelAndView mav = new ModelAndView("index");
			mav.addObject("lista", lista);
			return mav;
		}
		
	}

}
