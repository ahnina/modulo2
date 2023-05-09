BEGIN TRANSACTION;
CREATE TABLE IF NOT EXISTS "experiencia" (
	"exp_1"	TEXT,
	"exp_2"	TEXT,
	"exp_3"	TEXT,
	"cod_experiencia"	INTEGER NOT NULL,
	PRIMARY KEY("cod_experiencia")
);
CREATE TABLE IF NOT EXISTS "formacao" (
	"form_1"	TEXT,
	"form_2"	TEXT,
	"form_3"	TEXT,
	"cod_formacao"	INTEGER NOT NULL,
	PRIMARY KEY("cod_formacao")
);
CREATE TABLE IF NOT EXISTS "habilidades" (
	"hab_1"	TEXT,
	"hab_2"	TEXT,
	"hab_3"	TEXT,
	"cod_habilidades"	INTEGER NOT NULL,
	PRIMARY KEY("cod_habilidades")
);
CREATE TABLE IF NOT EXISTS "personalidade" (
	"per_1"	TEXT,
	"per_2"	TEXT,
	"per_3"	TEXT,
	"cod_personalidade"	INTEGER NOT NULL,
	PRIMARY KEY("cod_personalidade")
);
CREATE TABLE IF NOT EXISTS "realizacoes" (
	"real_1"	TEXT,
	"real_2"	TEXT,
	"real_3"	TEXT,
	"cod_realizacoes"	INTEGER NOT NULL,
	PRIMARY KEY("cod_realizacoes")
);
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
	FOREIGN KEY("cod_experiencia") REFERENCES "experiencia"("cod_experiencia"),
	FOREIGN KEY("cod_sobre_mim") REFERENCES "sobre_mim"("cod_sobre_mim"),
	FOREIGN KEY("cod_realizacoes") REFERENCES "realizacoes"("cod_realizacoes"),
	FOREIGN KEY("cod_habilidades") REFERENCES "habilidades"("cod_habilidades"),
	FOREIGN KEY("cod_personalidade") REFERENCES "personalidade"("cod_personalidade"),
	FOREIGN KEY("cod_formacao") REFERENCES "formacao"("cod_formacao"),
	PRIMARY KEY("cod_pessoa_geral")
);
INSERT INTO "experiencia" VALUES (NULL,NULL,NULL,1);
INSERT INTO "pessoa_geral" VALUES ('ojh','oijp',NULL,1,NULL,NULL,NULL,NULL,NULL,NULL);
INSERT INTO "pessoa_geral" VALUES ('1235','eowkjdcpw',NULL,2,NULL,NULL,NULL,NULL,NULL,NULL);
INSERT INTO "pessoa_geral" VALUES ('pkij','pjnp',NULL,3,NULL,NULL,NULL,NULL,NULL,NULL);
INSERT INTO "pessoa_geral" VALUES ('Ana Clara Marques','estudante',NULL,4,NULL,NULL,NULL,NULL,NULL,NULL);
INSERT INTO "pessoa_geral" VALUES ('Ana Clara Marques','estudante',NULL,5,NULL,NULL,NULL,NULL,NULL,NULL);
INSERT INTO "pessoa_geral" VALUES ('kjn','kmp',NULL,6,NULL,NULL,NULL,NULL,NULL,NULL);
INSERT INTO "pessoa_geral" VALUES ('jknó','kmp',NULL,7,NULL,NULL,NULL,NULL,NULL,NULL);
INSERT INTO "pessoa_geral" VALUES ('oijdspow','ojnwdco',NULL,8,NULL,NULL,NULL,NULL,NULL,NULL);
INSERT INTO "pessoa_geral" VALUES (',m ','lknp',NULL,9,NULL,NULL,NULL,NULL,NULL,NULL);
COMMIT;
