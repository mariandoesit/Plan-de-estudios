-- Materias
INSERT INTO materias (codigo, nombre, anio) VALUES ('ipc', 'Introducción al pensamiento científico', 1);
INSERT INTO materias (codigo, nombre, anio) VALUES ('icse', 'Introducción al conocimiento de la Sociedad y el Estado', 1);
INSERT INTO materias (codigo, nombre, anio) VALUES ('alg1', 'Álgebra A', 1);
INSERT INTO materias (codigo, nombre, anio) VALUES ('am1', 'Análisis matemático I', 1);
INSERT INTO materias (codigo, nombre, anio) VALUES ('penc', 'Pensamiento computacional', 1);
INSERT INTO materias (codigo, nombre, anio) VALUES ('fis', 'Físico', 1);
INSERT INTO materias (codigo, nombre, anio) VALUES ('am2', 'Análisis matemático II', 2);
INSERT INTO materias (codigo, nombre, anio) VALUES ('funpr', 'Fundamentos de programación', 2);
INSERT INTO materias (codigo, nombre, anio) VALUES ('desa', 'Introducción al desarrollo de software', 2);
INSERT INTO materias (codigo, nombre, anio) VALUES ('algli2', 'Álgebra lineal', 2);
INSERT INTO materias (codigo, nombre, anio) VALUES ('orga', 'Organizador del computador', 2);
INSERT INTO materias (codigo, nombre, anio) VALUES ('algoda', 'Algoritmo y estructura de datos', 2);
INSERT INTO materias (codigo, nombre, anio) VALUES ('prob', 'Probabilidad y estadística', 3);
INSERT INTO materias (codigo, nombre, anio) VALUES ('teoal', 'Teoría de algoritmos', 3);
INSERT INTO materias (codigo, nombre, anio) VALUES ('sist', 'Sistemas Operativos', 3);
INSERT INTO materias (codigo, nombre, anio) VALUES ('paradi', 'Paradigmas de programación', 3);
INSERT INTO materias (codigo, nombre, anio) VALUES ('bd', 'Base de datos', 3);
INSERT INTO materias (codigo, nombre, anio) VALUES ('model', 'Modelación numérica', 3);
INSERT INTO materias (codigo, nombre, anio) VALUES ('talpr', 'Taller de programación', 3);
INSERT INTO materias (codigo, nombre, anio) VALUES ('ing1', 'Ingeniería de software I', 3);
INSERT INTO materias (codigo, nombre, anio) VALUES ('ciend', 'Ciencia de datos', 4);
INSERT INTO materias (codigo, nombre, anio) VALUES ('gesti', 'Gestión de desarrollo de sistemas informáticos', 4);
INSERT INTO materias (codigo, nombre, anio) VALUES ('progco', 'Programación concurrente', 4);
INSERT INTO materias (codigo, nombre, anio) VALUES ('redes', 'Redes', 4);
INSERT INTO materias (codigo, nombre, anio) VALUES ('fisicin', 'Física para informática', 4);
INSERT INTO materias (codigo, nombre, anio) VALUES ('ing2', 'Ingeniería de software II', 4);
INSERT INTO materias (codigo, nombre, anio) VALUES ('sistd1', 'Sistemas distribuidos I', 4);
INSERT INTO materias (codigo, nombre, anio) VALUES ('empre1', 'Empresas de base tecnológica I', 4);
INSERT INTO materias (codigo, nombre, anio) VALUES ('taller', 'Taller de seguridad informática', 5);
INSERT INTO materias (codigo, nombre, anio) VALUES ('tesis', 'Tesis de Grado', 5);
INSERT INTO materias (codigo, nombre, anio) VALUES ('empre2', 'Empresas de base tecnológica II', 5);
INSERT INTO materias (codigo, nombre, anio) VALUES ('elec1', 'Electiva I', 5);

-- Correlativas
-- Año 2: todas requieren el CBC completo (las 6 materias del año 1)
INSERT INTO correlativas (materias_id, correlativa_codigo) VALUES ((SELECT id FROM materias WHERE codigo = 'am2'),    'ipc');
INSERT INTO correlativas (materias_id, correlativa_codigo) VALUES ((SELECT id FROM materias WHERE codigo = 'am2'),    'icse');
INSERT INTO correlativas (materias_id, correlativa_codigo) VALUES ((SELECT id FROM materias WHERE codigo = 'am2'),    'alg1');
INSERT INTO correlativas (materias_id, correlativa_codigo) VALUES ((SELECT id FROM materias WHERE codigo = 'am2'),    'am1');
INSERT INTO correlativas (materias_id, correlativa_codigo) VALUES ((SELECT id FROM materias WHERE codigo = 'am2'),    'penc');
INSERT INTO correlativas (materias_id, correlativa_codigo) VALUES ((SELECT id FROM materias WHERE codigo = 'am2'),    'fis');

INSERT INTO correlativas (materias_id, correlativa_codigo) VALUES ((SELECT id FROM materias WHERE codigo = 'funpr'),  'ipc');
INSERT INTO correlativas (materias_id, correlativa_codigo) VALUES ((SELECT id FROM materias WHERE codigo = 'funpr'),  'icse');
INSERT INTO correlativas (materias_id, correlativa_codigo) VALUES ((SELECT id FROM materias WHERE codigo = 'funpr'),  'alg1');
INSERT INTO correlativas (materias_id, correlativa_codigo) VALUES ((SELECT id FROM materias WHERE codigo = 'funpr'),  'am1');
INSERT INTO correlativas (materias_id, correlativa_codigo) VALUES ((SELECT id FROM materias WHERE codigo = 'funpr'),  'penc');
INSERT INTO correlativas (materias_id, correlativa_codigo) VALUES ((SELECT id FROM materias WHERE codigo = 'funpr'),  'fis');

INSERT INTO correlativas (materias_id, correlativa_codigo) VALUES ((SELECT id FROM materias WHERE codigo = 'desa'),   'ipc');
INSERT INTO correlativas (materias_id, correlativa_codigo) VALUES ((SELECT id FROM materias WHERE codigo = 'desa'),   'icse');
INSERT INTO correlativas (materias_id, correlativa_codigo) VALUES ((SELECT id FROM materias WHERE codigo = 'desa'),   'alg1');
INSERT INTO correlativas (materias_id, correlativa_codigo) VALUES ((SELECT id FROM materias WHERE codigo = 'desa'),   'am1');
INSERT INTO correlativas (materias_id, correlativa_codigo) VALUES ((SELECT id FROM materias WHERE codigo = 'desa'),   'penc');
INSERT INTO correlativas (materias_id, correlativa_codigo) VALUES ((SELECT id FROM materias WHERE codigo = 'desa'),   'fis');

INSERT INTO correlativas (materias_id, correlativa_codigo) VALUES ((SELECT id FROM materias WHERE codigo = 'algli2'), 'ipc');
INSERT INTO correlativas (materias_id, correlativa_codigo) VALUES ((SELECT id FROM materias WHERE codigo = 'algli2'), 'icse');
INSERT INTO correlativas (materias_id, correlativa_codigo) VALUES ((SELECT id FROM materias WHERE codigo = 'algli2'), 'alg1');
INSERT INTO correlativas (materias_id, correlativa_codigo) VALUES ((SELECT id FROM materias WHERE codigo = 'algli2'), 'am1');
INSERT INTO correlativas (materias_id, correlativa_codigo) VALUES ((SELECT id FROM materias WHERE codigo = 'algli2'), 'penc');
INSERT INTO correlativas (materias_id, correlativa_codigo) VALUES ((SELECT id FROM materias WHERE codigo = 'algli2'), 'fis');

INSERT INTO correlativas (materias_id, correlativa_codigo) VALUES ((SELECT id FROM materias WHERE codigo = 'orga'),   'ipc');
INSERT INTO correlativas (materias_id, correlativa_codigo) VALUES ((SELECT id FROM materias WHERE codigo = 'orga'),   'icse');
INSERT INTO correlativas (materias_id, correlativa_codigo) VALUES ((SELECT id FROM materias WHERE codigo = 'orga'),   'alg1');
INSERT INTO correlativas (materias_id, correlativa_codigo) VALUES ((SELECT id FROM materias WHERE codigo = 'orga'),   'am1');
INSERT INTO correlativas (materias_id, correlativa_codigo) VALUES ((SELECT id FROM materias WHERE codigo = 'orga'),   'penc');
INSERT INTO correlativas (materias_id, correlativa_codigo) VALUES ((SELECT id FROM materias WHERE codigo = 'orga'),   'fis');

INSERT INTO correlativas (materias_id, correlativa_codigo) VALUES ((SELECT id FROM materias WHERE codigo = 'algoda'), 'ipc');
INSERT INTO correlativas (materias_id, correlativa_codigo) VALUES ((SELECT id FROM materias WHERE codigo = 'algoda'), 'icse');
INSERT INTO correlativas (materias_id, correlativa_codigo) VALUES ((SELECT id FROM materias WHERE codigo = 'algoda'), 'alg1');
INSERT INTO correlativas (materias_id, correlativa_codigo) VALUES ((SELECT id FROM materias WHERE codigo = 'algoda'), 'am1');
INSERT INTO correlativas (materias_id, correlativa_codigo) VALUES ((SELECT id FROM materias WHERE codigo = 'algoda'), 'penc');
INSERT INTO correlativas (materias_id, correlativa_codigo) VALUES ((SELECT id FROM materias WHERE codigo = 'algoda'), 'fis');

-- Año 3
INSERT INTO correlativas (materias_id, correlativa_codigo) VALUES ((SELECT id FROM materias WHERE codigo = 'prob'),   'am2');
INSERT INTO correlativas (materias_id, correlativa_codigo) VALUES ((SELECT id FROM materias WHERE codigo = 'prob'),   'algli2');

INSERT INTO correlativas (materias_id, correlativa_codigo) VALUES ((SELECT id FROM materias WHERE codigo = 'teoal'),  'algoda');
INSERT INTO correlativas (materias_id, correlativa_codigo) VALUES ((SELECT id FROM materias WHERE codigo = 'teoal'),  'desa');

INSERT INTO correlativas (materias_id, correlativa_codigo) VALUES ((SELECT id FROM materias WHERE codigo = 'sist'),   'orga');

INSERT INTO correlativas (materias_id, correlativa_codigo) VALUES ((SELECT id FROM materias WHERE codigo = 'paradi'), 'algoda');
INSERT INTO correlativas (materias_id, correlativa_codigo) VALUES ((SELECT id FROM materias WHERE codigo = 'paradi'), 'desa');

INSERT INTO correlativas (materias_id, correlativa_codigo) VALUES ((SELECT id FROM materias WHERE codigo = 'bd'),     'orga');
INSERT INTO correlativas (materias_id, correlativa_codigo) VALUES ((SELECT id FROM materias WHERE codigo = 'bd'),     'paradi');

INSERT INTO correlativas (materias_id, correlativa_codigo) VALUES ((SELECT id FROM materias WHERE codigo = 'model'),  'am2');
INSERT INTO correlativas (materias_id, correlativa_codigo) VALUES ((SELECT id FROM materias WHERE codigo = 'model'),  'algli2');
INSERT INTO correlativas (materias_id, correlativa_codigo) VALUES ((SELECT id FROM materias WHERE codigo = 'model'),  'algoda');

INSERT INTO correlativas (materias_id, correlativa_codigo) VALUES ((SELECT id FROM materias WHERE codigo = 'talpr'),  'orga');
INSERT INTO correlativas (materias_id, correlativa_codigo) VALUES ((SELECT id FROM materias WHERE codigo = 'talpr'),  'paradi');

INSERT INTO correlativas (materias_id, correlativa_codigo) VALUES ((SELECT id FROM materias WHERE codigo = 'ing1'),   'paradi');

-- Año 4
INSERT INTO correlativas (materias_id, correlativa_codigo) VALUES ((SELECT id FROM materias WHERE codigo = 'ciend'),  'prob');
INSERT INTO correlativas (materias_id, correlativa_codigo) VALUES ((SELECT id FROM materias WHERE codigo = 'ciend'),  'bd');
INSERT INTO correlativas (materias_id, correlativa_codigo) VALUES ((SELECT id FROM materias WHERE codigo = 'ciend'),  'model');
INSERT INTO correlativas (materias_id, correlativa_codigo) VALUES ((SELECT id FROM materias WHERE codigo = 'ciend'),  'teoal');

INSERT INTO correlativas (materias_id, correlativa_codigo) VALUES ((SELECT id FROM materias WHERE codigo = 'gesti'),  'ing1');

INSERT INTO correlativas (materias_id, correlativa_codigo) VALUES ((SELECT id FROM materias WHERE codigo = 'progco'), 'sist');
INSERT INTO correlativas (materias_id, correlativa_codigo) VALUES ((SELECT id FROM materias WHERE codigo = 'progco'), 'talpr');

INSERT INTO correlativas (materias_id, correlativa_codigo) VALUES ((SELECT id FROM materias WHERE codigo = 'redes'),  'sist');

INSERT INTO correlativas (materias_id, correlativa_codigo) VALUES ((SELECT id FROM materias WHERE codigo = 'ing2'),   'bd');
INSERT INTO correlativas (materias_id, correlativa_codigo) VALUES ((SELECT id FROM materias WHERE codigo = 'ing2'),   'ing1');
INSERT INTO correlativas (materias_id, correlativa_codigo) VALUES ((SELECT id FROM materias WHERE codigo = 'ing2'),   'talpr');

INSERT INTO correlativas (materias_id, correlativa_codigo) VALUES ((SELECT id FROM materias WHERE codigo = 'sistd1'), 'progco');
INSERT INTO correlativas (materias_id, correlativa_codigo) VALUES ((SELECT id FROM materias WHERE codigo = 'sistd1'), 'redes');

-- Año 5
INSERT INTO correlativas (materias_id, correlativa_codigo) VALUES ((SELECT id FROM materias WHERE codigo = 'taller'), 'redes');
INSERT INTO correlativas (materias_id, correlativa_codigo) VALUES ((SELECT id FROM materias WHERE codigo = 'empre2'), 'empre1');