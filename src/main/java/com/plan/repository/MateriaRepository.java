package com.plan.repository;

import com.plan.model.Materia;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

import java.util.List;
import java.util.Optional;

@Repository
public interface MateriaRepository extends JpaRepository<Materia, Long> {
    List<Materia> findAllByOrderByAnioAsc();
    Optional<Materia> findByCodigo(String codigo);

}
