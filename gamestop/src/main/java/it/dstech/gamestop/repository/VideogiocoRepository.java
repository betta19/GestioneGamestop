package it.dstech.gamestop.repository;

import java.util.List;

import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.CrudRepository;
import org.springframework.data.repository.query.Param;

import it.dstech.gamestop.model.Categoria;
import it.dstech.gamestop.model.Videogioco;

public interface VideogiocoRepository extends CrudRepository<Videogioco, Long> {
	
//	@Query(value = "SELECT c FROM Customer c WHERE c.name LIKE '%' || :keyword || '%'"
//			+ " OR c.email LIKE '%' || :keyword || '%'"
//			+ " OR c.address LIKE '%' || :keyword || '%'")
//	public List<Videogioco> search(@Param("keyword") String keyword);


	public List<Videogioco>findByOrderByTitoloAsc(); 
	
	public List<Videogioco>findByOrderByCategoriaAsc();
	
	public List<Videogioco>findByOrderByPrezzoAsc();
	
	public List<Videogioco>findByOrderByClassificazionePEGIAsc();

}
