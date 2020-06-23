package it.dstech.gamestop.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.data.domain.Sort;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import it.dstech.gamestop.model.Categoria;
import it.dstech.gamestop.model.Videogioco;
import it.dstech.gamestop.repository.VideogiocoRepository;

@Service
@Transactional
public class VideogiocoService {
	@Autowired VideogiocoRepository repo;
	
	
	 public List<Videogioco> listAll() {
		return (List<Videogioco>) repo.findAll();
	}
	
	 public List<Videogioco> sortByTitoloAsc() {
		 
	        return repo.findByTitoloOrderByTitoloAsc("titolo");
	    }
	 
	 public List<Videogioco> sortByCategoriaAsc() {
	        return repo.findByCategoriaOrderByCategoriaAsc(Categoria.AVVENTURA);
	    }
	 
	 public List<Videogioco> sortByPrezzoAsc() {
	        return repo.findByPrezzoOrderByPrezzoAsc(10.00);
	    }
	 
	 public List<Videogioco> sortByClassificazionePEGIAsc() {
	        return repo.findByClassificazionePEGIOrderByClassificazionePEGIAsc("classificazionePEGI");
	    }

}
