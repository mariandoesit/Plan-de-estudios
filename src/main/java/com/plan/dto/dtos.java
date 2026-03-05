package com.plan.dto;

import com.plan.model.ProgresoMateria.EstadoMateria;
import jakarta.validation.constraints.Email;
import jakarta.validation.constraints.NotBlank;
import jakarta.validation.constraints.NotNull;
import lombok.Data;

import java.util.List;
import java.util.Map;

public class dtos {

    // ------ AUTH ------------------------------
    @Data
    public static class RegisterRequest {
        @NotBlank
        private String nombre;
        @Email @NotBlank
        private String email;
        @NotBlank
        private String password;
    }

    @Data
    public static class LoginRequest {
        @Email @NotBlank
        private String email;
        @NotBlank
        private String password;
    }

    @Data
    public static class AuthResponse {
        private String token;
        private String nombre;
        private String email;

        public AuthResponse(String token, String nombre, String email) {
            this.token = token;
            this.nombre = nombre;
            this.email = email;
        }
    }

    // ------ MATERIAS ------------------------

    @Data
    public static class MateriaDto {
        private Long id;
        private String codigo;
        private String nombre;
        private Integer anio;
        private List<String> correlativas;
        private EstadoMateria estado;
    }

    // ------- PROGRESO ------------------------

    @Data
    public static class ActualizarEstadoRequest {
        @NotBlank
        private String materiaCodigo;
        @NotNull
        private EstadoMateria estado;
    }

    @Data
    public static class ProgresoResponse {
        private Map<String, EstadoMateria> progreso;

        public ProgresoResponse(Map<String, EstadoMateria> progreso) {
            this.progreso = progreso;
        }
    }
}
