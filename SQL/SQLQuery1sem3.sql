USE master;
create database Biblioteca;
use Biblioteca;

-- -----------------------------------------------------
-- `materia`
-- -----------------------------------------------------
CREATE TABLE materia (
  id_materia INT PRIMARY KEY NOT NULL,
  nom_materia VARCHAR(MAX) NOT NULL,
  desc_materia VARCHAR(MAX) NOT NULL,
  est_materia INT NOT NULL)

-- -----------------------------------------------------
-- `libro`
-- -----------------------------------------------------
CREATE TABLE libro (
  id_libro INT PRIMARY KEY,
  id_materia INT NOT NULL,
  tit_libro VARCHAR(MAX) NOT NULL,
  np_libro INT NOT NULL,
  fp_libro DATE NOT NULL,
  edit_libro VARCHAR(MAX) NOT NULL,
  edic_libro VARCHAR(MAX) NOT NULL,
  foto_libro VARCHAR(MAX) NULL,
  est_libro INT NULL,
  CONSTRAINT fk_libro_materia
    FOREIGN KEY (id_materia)
    REFERENCES materia (id_materia))


-- -----------------------------------------------------
-- `ejemplar`
-- -----------------------------------------------------
CREATE TABLE ejemplar(
  id_ejemplar INT PRIMARY KEY,
  id_libro INT NOT NULL,
  serie_ejemplar VARCHAR(MAX) NULL,
  est_ejemplar INT NOT NULL,
  CONSTRAINT fk_ejemplar_libro1	
  FOREIGN KEY (id_libro) 
  REFERENCES libro(id_libro))



-- -----------------------------------------------------
-- `usuario`
-- -----------------------------------------------------
CREATE TABLE usuario(
  id_usuario INT PRIMARY KEY,
  nom_usuario VARCHAR(MAX) NOT NULL,
  ap_usuario VARCHAR(MAX) NOT NULL,
  am_usuario VARCHAR(MAX) NOT NULL,
  dni_usuario VARCHAR(MAX) NOT NULL,
  cel_usuario VARCHAR(MAX) NOT NULL,
  email_usuario VARCHAR(MAX) NOT NULL,
  dir_usuario VARCHAR(MAX) NOT NULL,
  foto_usuario VARCHAR(MAX) NOT NULL,
  sex_usuario VARCHAR(MAX) NOT NULL,
  fn_usuario DATE NOT NULL,
  est_usuario INT NOT NULL)



-- -----------------------------------------------------
-- `prestamo`
-- -----------------------------------------------------
CREATE TABLE prestamo(
  id_prestamo INT PRIMARY KEY,
  id_usuario INT NOT NULL,
  id_ejemplar INT NOT NULL,
  fec_prestamo DATE NOT NULL,
  fdev_prestamo DATE NOT NULL,
  est_prestamo INT NOT NULL,
	CONSTRAINT fk_prestamo_usuario1
    FOREIGN KEY (id_usuario)
    REFERENCES usuario (id_usuario),
	CONSTRAINT fk_prestamo_ejemplar1
    FOREIGN KEY (id_ejemplar)
    REFERENCES ejemplar (id_ejemplar))


-- -----------------------------------------------------
-- autor
-- -----------------------------------------------------
CREATE TABLE autor (
  id_autor INT PRIMARY KEY,
  nom_autor VARCHAR(MAX) NOT NULL,
  ap_autor VARCHAR(MAX) NOT NULL,
  am_autor VARCHAR(MAX) NOT NULL,
  dni_autor VARCHAR(MAX) NOT NULL,
  fn_autor VARCHAR(MAX) NOT NULL,
  cel_autor VARCHAR(MAX) NOT NULL,
  email_autor VARCHAR(MAX) NOT NULL,
  est_autor INT NOT NULL)


-- -----------------------------------------------------
-- Table libro_autor
-- -----------------------------------------------------
CREATE TABLE libro_autor (
  id_autor INT NOT NULL,
  id_libro INT NOT NULL,
  CONSTRAINT fk_libro_autor_autor1
    FOREIGN KEY (id_autor)
    REFERENCES autor (id_autor),
  CONSTRAINT fk_libro_autor_libro1
    FOREIGN KEY (id_libro)
    REFERENCES libro (id_libro))



-- -----------------------------------------------------
-- Table libro_tipo
-- -----------------------------------------------------
CREATE TABLE libro_tipo (
  id_libro_tipo INT PRIMARY KEY,
  nom_libro_tipo VARCHAR(MAX) NULL,
  est_libro_tipo INT NULL)

-- -----------------------------------------------------
-- Table libro_tipo_detalle
-- -----------------------------------------------------
CREATE TABLE libro_tipo_detalle (
  libro_tipo_id_libro_tipo INT PRIMARY KEY,
  libro_id_libro INT NOT NULL,
  CONSTRAINT fk_libro_tipo_detalle_libro_tipo1
    FOREIGN KEY (libro_tipo_id_libro_tipo)
    REFERENCES libro_tipo (id_libro_tipo),
  CONSTRAINT fk_libro_tipo_detalle_libro1
    FOREIGN KEY (libro_id_libro)
    REFERENCES libro (id_libro))