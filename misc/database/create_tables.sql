USE language_school_laravel ;

DROP TABLE billing;
DROP TABLE student;

-- Armazena os dados pessoais dos estudantes
CREATE TABLE IF NOT EXISTS student (
  id BIGINT UNSIGNED NOT NULL AUTO_INCREMENT,
  cpf CHAR(11) NOT NULL,
  name VARCHAR(128) NOT NULL,
  email VARCHAR(256) NULL,
  phone VARCHAR(11) NULL,
  city VARCHAR(128) NULL,
  is_active BOOLEAN NOT NULL,
  created_at DATETIME NOT NULL,
  PRIMARY KEY (id))
ENGINE = InnoDB;

-- Armazena os dados de pagamento dos estudantes
CREATE TABLE IF NOT EXISTS billing (
  id BIGINT UNSIGNED NOT NULL AUTO_INCREMENT,
  student_id BIGINT UNSIGNED NOT NULL,
  amount FLOAT NOT NULL,
  due_date DATE NOT NULL,
  payment_date DATE NULL,
  created_at DATETIME NOT NULL,
  PRIMARY KEY (id),
  INDEX fk_billing_student_idx (student_id ASC),
  CONSTRAINT fk_billing_student
    FOREIGN KEY (student_id)
    REFERENCES student (id)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;
