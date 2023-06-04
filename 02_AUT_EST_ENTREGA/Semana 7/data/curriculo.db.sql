BEGIN TRANSACTION;
CREATE TABLE IF NOT EXISTS "sobre_mim" (
	"endereco"	TEXT,
	"telefone"	NUMERIC NOT NULL,
	"email"	TEXT NOT NULL,
	"breve_apresentacao"	TEXT NOT NULL,
	"cod_sobre_mim"	INTEGER NOT NULL,
	PRIMARY KEY("cod_sobre_mim")
);
CREATE TABLE IF NOT EXISTS "pessoa_geral" (
	"nome"	char(128) NOT NULL,
	"cargo"	char(55) NOT NULL,
	"foto"	BLOB,
	"cod_pessoa_geral"	INTEGER NOT NULL,
	"cod_experiencia"	INTEGER,
	"cod_formacao"	INTEGER,
	"cod_habilidades"	INTEGER,
	"cod_personalidade"	INTEGER,
	"cod_realizacoes"	INTEGER,
	"cod_sobre_mim"	INTEGER,
	FOREIGN KEY("cod_habilidades") REFERENCES "habilidades"("cod_habilidades"),
	FOREIGN KEY("cod_formacao") REFERENCES "formacao"("cod_formacao"),
	FOREIGN KEY("cod_realizacoes") REFERENCES "realizacoes"("cod_realizacoes"),
	FOREIGN KEY("cod_experiencia") REFERENCES "experiencia"("cod_experiencia"),
	FOREIGN KEY("cod_sobre_mim") REFERENCES "sobre_mim"("cod_sobre_mim"),
	FOREIGN KEY("cod_personalidade") REFERENCES "personalidade"("cod_personalidade"),
	PRIMARY KEY("cod_pessoa_geral")
);
CREATE TABLE IF NOT EXISTS "formacao" (
	"instituicao"	TEXT,
	"periodo"	TEXT,
	"descricao"	TEXT,
	"cod_formacao"	INTEGER NOT NULL,
	PRIMARY KEY("cod_formacao")
);
CREATE TABLE IF NOT EXISTS "habilidades" (
	"descricao"	TEXT,
	"cod_habilidades"	INTEGER NOT NULL,
	PRIMARY KEY("cod_habilidades")
);
CREATE TABLE IF NOT EXISTS "personalidade" (
	"descricao"	TEXT,
	"cod_personalidade"	INTEGER NOT NULL,
	PRIMARY KEY("cod_personalidade")
);
CREATE TABLE IF NOT EXISTS "realizacoes" (
	"descricao"	TEXT,
	"cod_realizacoes"	INTEGER NOT NULL,
	PRIMARY KEY("cod_realizacoes")
);
CREATE TABLE IF NOT EXISTS "experiencia" (
	"descricao"	TEXT,
	"cod_experiencia"	INTEGER NOT NULL,
	"onde"	INTEGER,
	PRIMARY KEY("cod_experiencia")
);
INSERT INTO "sobre_mim" VALUES ('rua dos bobos','112222-2222','ana@marques.com','undefined',1);
INSERT INTO "sobre_mim" VALUES ('rua dos bobos','112222-2222','ana@marques.com','undefined',2);
INSERT INTO "sobre_mim" VALUES ('undefined','undefined','undefined','undefined',3);
INSERT INTO "sobre_mim" VALUES ('rua dos bobos','112222-2222','ana@marques.com','undefined',4);
INSERT INTO "sobre_mim" VALUES ('rua dos bobos','112222-2222','ana@marques.com','estudante de ciencias da computacao',5);
INSERT INTO "pessoa_geral" VALUES ('ojh','oijp',NULL,1,NULL,NULL,NULL,NULL,NULL,NULL);
INSERT INTO "pessoa_geral" VALUES ('pkij','pjnp',NULL,3,NULL,NULL,NULL,NULL,NULL,NULL);
INSERT INTO "pessoa_geral" VALUES ('Ana Clara Marques','estudante',NULL,4,NULL,NULL,NULL,NULL,NULL,NULL);
INSERT INTO "pessoa_geral" VALUES ('Ana Clara Marques','estudante',NULL,5,NULL,NULL,NULL,NULL,NULL,NULL);
INSERT INTO "pessoa_geral" VALUES ('kjn','kmp',NULL,6,NULL,NULL,NULL,NULL,NULL,NULL);
INSERT INTO "pessoa_geral" VALUES ('jknó','kmp',NULL,7,NULL,NULL,NULL,NULL,NULL,NULL);
INSERT INTO "pessoa_geral" VALUES ('oijdspow','ojnwdco',NULL,8,NULL,NULL,NULL,NULL,NULL,NULL);
INSERT INTO "pessoa_geral" VALUES ('marcio ','gerente',NULL,9,NULL,NULL,NULL,NULL,NULL,NULL);
INSERT INTO "pessoa_geral" VALUES ('piripipi','chefe',NULL,10,NULL,NULL,NULL,NULL,NULL,NULL);
INSERT INTO "formacao" VALUES ('colegio santa cruz','2019-2021','ensino medio',1);
INSERT INTO "habilidades" VALUES ('comunicacao',1);
INSERT INTO "personalidade" VALUES ('comunicativa',1);
INSERT INTO "realizacoes" VALUES ('entrar na faculdade',1);
INSERT INTO "experiencia" VALUES (NULL,1,NULL);
INSERT INTO "experiencia" VALUES ('negocios',2,NULL);
INSERT INTO "experiencia" VALUES ('trabalho em projetos',3,'inteli');
COMMIT;
