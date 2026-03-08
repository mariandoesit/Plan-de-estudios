package com.plan.controller;

import com.plan.dto.dtos.*;
import com.plan.service.MateriaService;
import jakarta.validation.Valid;
import lombok.RequiredArgsConstructor;
import org.springframework.http.ResponseEntity;
import org.springframework.security.core.annotation.AuthenticationPrincipal;
import org.springframework.security.core.userdetails.UserDetails;
import org.springframework.web.bind.annotation.*;

import java.util.List;

@RestController
@RequestMapping("/api/materias")
@RequiredArgsConstructor
public class MateriaController {

    private final MateriaService materiaService;

    @GetMapping
    public ResponseEntity<List<MateriaDto>> getMaterias(
            @AuthenticationPrincipal UserDetails userDetails) {
        return ResponseEntity.ok(materiaService.getMateriasConProgreso(userDetails.getUsername()));
    }

    @PutMapping("/progreso")
    public ResponseEntity<Void> actualizarEstado(
            @AuthenticationPrincipal UserDetails userDetails,
            @Valid @RequestBody ActualizarEstadoRequest request) {
        materiaService.actualizarEstado(userDetails.getUsername(), request);
        return ResponseEntity.ok().build();
    }

    @GetMapping("/progreso")
    public ResponseEntity<ProgresoResponse> getProceso(
            @AuthenticationPrincipal UserDetails userDetails) {
        return ResponseEntity.ok(materiaService.getProgreso(userDetails.getUsername()));
    }
}
