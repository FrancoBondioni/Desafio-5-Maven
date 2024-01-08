CREATE DATABASE IF NOT EXISTS `desafio-5`;
USE `desafio-5`;

CREATE TABLE IF NOT EXISTS POKEMON (
  	id INT NOT NULL,
  	name VARCHAR(50) NOT NULL DEFAULT '',
  	baseExperience INT NOT NULL DEFAULT (0),
  	height INT NOT NULL DEFAULT (0),
  	weight INT NOT NULL DEFAULT (0),
  	PRIMARY KEY (id)
)COLLATE='utf8mb4_spanish_ci';

CREATE TABLE COVID (
	date VARCHAR(8) NOT NULL DEFAULT '',
	states INT(10) NOT NULL,
	positive INT(10) NOT NULL,
	negative INT(10) NOT NULL,
	pending INT(10) NOT NULL,
	hash VARCHAR(50) NOT NULL DEFAULT '',
	PRIMARY KEY (date) USING BTREE
)COLLATE='utf8mb4_spanish_ci';

CREATE TABLE PLACEHOLDER (
	id INT(10) NOT NULL,
	userId INT(10) NOT NULL,
	title VARCHAR(200) NOT NULL DEFAULT '',
	body VARCHAR(300) NOT NULL DEFAULT '',
	PRIMARY KEY (id) USING BTREE
)COLLATE='utf8mb4_spanish_ci';

INSERT INTO POKEMON (id, name, baseExperience, height, weight) VALUES (4, 'charmander', 62, 6, 85);

INSERT INTO POKEMON (id, name, baseExperience, height, weight) VALUES (7, 'ivysaur', 63, 5, 130);

INSERT INTO COVID (date, states, positive, negative, pending, hash) VALUES ('20200220', 6, 7, null, null, '98c9e28ceec3f81af9e70df489aa8d21f0f45753');

INSERT INTO PLACEHOLDER (id, userId, title, body) 
VALUES (1, 3, 'sea molestias quasi exercitationem repellat qui ipsa sit aut', 'et iusto sed quo iure\nvoluptatem occaecati omnis eligendi aut ad\nvoluptatem doloribus vel accusantium quis pariatur\nmolestiae porro eius odio et labore et velit aut');