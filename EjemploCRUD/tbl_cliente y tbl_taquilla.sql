Table: administrador.tbl_cliente

-- DROP TABLE administrador.tbl_cliente;

CREATE TABLE administrador.tbl_cliente
(
  id_cliente character varying NOT NULL,
  nombre character varying NOT NULL,
  descripcion character varying NOT NULL,
  CONSTRAINT id_cliente PRIMARY KEY (id_cliente),
 
)
CREATE TABLE administrador.tbl_taquilla
(
  id_taquillero character varying NOT NULL,
  taquillero character varying NOT NULL,
  descripcion character varying NOT NULL,
  CONSTRAINT id_taquillero PRIMARY KEY (id_taquillero)
   CONSTRAINT id_cliente FOREIGN KEY (id_cliente)
      REFERENCES administrador.tbl_taquilla (id_taquillero) MATCH SIMPLE
      ON UPDATE NO ACTION ON DELETE NO ACTION
)
)
WITH (
  OIDS=FALSE
);
ALTER TABLE administrador.tbl_cliente
  OWNER TO postgres;
