CREATE TABLE joueur
(
    id INT PRIMARY KEY NOT NULL,
    nom VARCHAR(100),
    prenom VARCHAR(100),
    taille INT,
	poids INT,
    date_naissance DATE
);

SELECT AddGeometryColumn( 'joueur', 'ville_naissance', 4326, 'POINT', 2);

--ALTER TABLE joueur ADD COLUMN nom_prenom VARCHAR(200) GENERATED ALWAYS AS (CONCAT(prenom,' ',non)) STORED;
--ALTER TABLE joueur ADD COLUMN imc INT GENERATED ALWAYS AS (poids/((taille/100)^2)) STORED;

CREATE INDEX imc ON joueur (( poids / ( (taille/100)^2 ) ));

ALTER TABLE joueur ADD  AS 
