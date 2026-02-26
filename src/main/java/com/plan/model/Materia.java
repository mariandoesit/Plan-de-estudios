package com.plan.model;

import jakarta.persistence.*;
import lombok.Data;
import lombok.NoArgsConstructor;
import lombok.AllArgsConstructor;

import java.util.ArrayList;
import java.util.List;

@Entity
@Table(name = "materias")
@Data
@NoArgsConstructor
@AllArgsConstructor
public class Materia {

    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private Long id;

    @Column(nullable = false, unique = true)
    private String codigo;

    @Column(nullable = false)
    private String nombre;

    @Column(nullable = false)
    private Integer anio;

    @ElementCollection
    @CollectionTable(name = "correlativas", joinColumns = @JoinColumn(name = "materias_id"))
    @Column(name = "correlativa_codigo")
    private List<String> correlativas = new ArrayList<>();
}