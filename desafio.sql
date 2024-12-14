
--Requerimiento 1

CREATE TABLE peliculas (
    id INT PRIMARY KEY,
    nombre VARCHAR(255),
    anno INT
    );

CREATE TABLE tags (
    id INT PRIMARY KEY,
    tag VARCHAR(32) 
    );

CREATE TABLE peliculas_tags (
    peliculas_id INT NOT NULL,
    tags_id INT NOT NULL,
    FOREIGN KEY ("peliculas_id") REFERENCES "peliculas"("id"),
    FOREIGN KEY ("tags_id") REFERENCES "tags"("id")
    );


--Requerimiento 2

INSERT INTO peliculas (id, nombre, anno) VALUES
('1', 'Jurassic Park', '1993'),
('2', 'Grandes heroes', '2014'),
('3', 'Moana 2', '2024'),
('4', 'Frozen 2', '2019'),
('5', 'Furiosa', '2024');

INSERT INTO tags (id, tag) VALUES
('1', 'Ciencia Ficcion'),
('2', 'Infantil'),
('3', 'Aventura'),
('4', 'Fantasia'),
('5', 'Accion');

INSERT INTO peliculas_tags (peliculas_id, tags_id) VALUES
('1', '1'),
('1', '2'),
('1', '3'),
('2', '2'),
('2', '4');

--Requerimiento 3

SELECT p.id, COUNT(pt.tags_id)
FROM peliculas p 
LEFT JOIN peliculas_tags pt ON p.id = pt.peliculas_id
GROUP BY p.id
ORDER BY p.id; 

