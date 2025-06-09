CREATE TABLE   pessoa  (
      cpf   INT NOT NULL,
      nome   VARCHAR(20) NOT NULL,
      sexo   CHAR(1) NULL,
    PRIMARY KEY(  cpf  )
);
CREATE TABLE   piloto  (
      p_cpf   INT NOT NULL,
      licenca   VARCHAR(10) NOT NULL,
    PRIMARY KEY(  p_cpf  )
);
CREATE TABLE   telefone  (
      pas_p_cpf   INT NOT NULL,
      numero   INT NOT NULL,
    PRIMARY KEY(  pas_p_cpf, numero  )
);
-- ALTER TABLE telefone   ADD PRIMARY KEY(  numero  );

CREATE TABLE   voo  (
      numero   INT NOT NULL,
      data_voo   DATE NOT NULL,
      pi_p_cpf   INT NOT NULL,
    PRIMARY KEY(  numero  )
);
CREATE TABLE   reserva  (
      pas_p_cpf   INT NOT NULL,
      v_numero   INT NOT NULL,
    PRIMARY KEY(  pas_p_cpf, numero )
);
-- ALTER TABLE reserva   ADD PRIMARY KEY(  v_numero  );

CREATE TABLE   passageiro  (
      p_cpf   INT NOT NULL,
      categoria   VARCHAR(10) NULL,
    PRIMARY KEY(  p_cpf  )
);
ALTER TABLE
      voo   ADD CONSTRAINT   voo_pi_p_cpf_foreign   FOREIGN KEY(  pi_p_cpf  ) REFERENCES   piloto  (  p_cpf  );
ALTER TABLE
      reserva   ADD CONSTRAINT   reserva_v_numero_foreign   FOREIGN KEY(  v_numero  ) REFERENCES   voo  (  numero  );
ALTER TABLE
      passageiro   ADD CONSTRAINT   passageiro_p_cpf_foreign   FOREIGN KEY(  p_cpf  ) REFERENCES   pessoa  (  cpf  );
ALTER TABLE
      reserva   ADD CONSTRAINT   reserva_pas_p_cpf_foreign   FOREIGN KEY(  pas_p_cpf  ) REFERENCES   passageiro  (  p_cpf  );
ALTER TABLE
      telefone   ADD CONSTRAINT   telefone_pas_p_cpf_foreign   FOREIGN KEY(  pas_p_cpf  ) REFERENCES   passageiro  (  p_cpf  );
ALTER TABLE
      piloto   ADD CONSTRAINT   piloto_p_cpf_foreign   FOREIGN KEY(  p_cpf  ) REFERENCES   pessoa  (  cpf  );