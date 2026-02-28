package com.plan.repository;

import com.plan.model.ProgresoMateria;
import com.plan.model.Usuario;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

import java.util.List;
import java.util.Optional;

@Repository
public interface ProgresoMateriaRepository extends JpaRepository<ProgresoMateria, Long> {
    List<ProgresoMateria> findByUsuario(Usuario usuario);
    Optional<ProgresoMateria> findByUsuarioAndMateriaCodigo(Usuario usuario, String materiaCodigo);
}
