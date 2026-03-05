package com.plan.service;

import com.plan.dto.dtos.*;
import com.plan.model.Materia;
import com.plan.model.ProgresoMateria;
import com.plan.model.ProgresoMateria.EstadoMateria;
import com.plan.model.Usuario;
import com.plan.repository.MateriaRepository;
import com.plan.repository.ProgresoMateriaRepository;
import com.plan.repository.UsuarioRepository;
import lombok.RequiredArgsConstructor;
import org.springframework.security.core.userdetails.UsernameNotFoundException;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import java.util.List;
import java.util.Map;
import java.util.stream.Collectors;

@Service
@RequiredArgsConstructor
public class MateriaService {

    private final MateriaRepository materiaRepository;
    private final ProgresoMateriaRepository progresoRepository;
    private final UsuarioRepository usuarioRepository;

    public List<MateriaDto> getMateriasConProgreso(String email) {
        Usuario usuario = getUsuario(email);

        Map<String, EstadoMateria> progreso = progresoRepository.findByUsuario(usuario)
                .stream()
                .collect(Collectors.toMap(
                        ProgresoMateria::getMateriaCodigo,
                        ProgresoMateria::getEstado
                ));

        return materiaRepository.findAllByOrderByAnioAsc()
                .stream()
                .map(m -> toDto(m, progreso.getOrDefault(m.getCodigo(), EstadoMateria.NONE)))
                .collect(Collectors.toList());
    }

    @Transactional
    public void actualizarEstado(String email, ActualizarEstadoRequest request) {
        Usuario usuario = getUsuario(email);

        ProgresoMateria progreso = progresoRepository
                .findByUsuarioAndMateriaCodigo(usuario, request.getMateriaCodigo())
                .orElse(new ProgresoMateria(null, usuario, request.getMateriaCodigo(), EstadoMateria.NONE));

        progreso.setEstado(request.getEstado());
        progresoRepository.save(progreso);
    }

    public ProgresoResponse getProgreso(String email) {
        Usuario usuario = getUsuario(email);

        Map<String, EstadoMateria> mapa = progresoRepository.findByUsuario(usuario)
                .stream()
                .collect(Collectors.toMap(
                        ProgresoMateria::getMateriaCodigo,
                        ProgresoMateria::getEstado
                ));

        return new ProgresoResponse(mapa);
    }

    private MateriaDto toDto(Materia m, EstadoMateria estado) {
        MateriaDto dto = new MateriaDto();
        dto.setId(m.getId());
        dto.setCodigo(m.getCodigo());
        dto.setNombre(m.getNombre());
        dto.setAnio(m.getAnio());
        dto.setCorrelativas(m.getCorrelativas());
        dto.setEstado(estado);
        return dto;
    }

    private Usuario getUsuario(String email) {
        return usuarioRepository.findByEmail(email)
                .orElseThrow(() -> new UsernameNotFoundException("Usuario no encontrado: " + email));
    }
}