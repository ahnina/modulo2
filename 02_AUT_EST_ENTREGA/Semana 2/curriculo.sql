BEGIN TRANSACTION;
CREATE TABLE IF NOT EXISTS "formacao" (
	"form_1"	TEXT,
	"form_2"	TEXT,
	"form_3"	TEXT,
	"cod_formacao"	INTEGER NOT NULL,
	PRIMARY KEY("cod_formacao")
);
COMMIT;
