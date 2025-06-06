CREATE TABLE empleados (
empleados_ID INT PRIMARY KEY,
Apellidos VARCHAR(45),
correo_electronico VARCHAR(45);

CREATE TABLE cargos (
cargo_id INT PRIMARY KEY AUTO_INCREMENT,
descripcion_cargo VARCHAR(45));

CREATE TABLE centros_costo (
costo_id INT PRIMARY KEY,
nombre_centro_costo VARCHAR(45));

CREATE TABLE centros_trabajo (
trabajo_id INT PRIMARY KEY,
nombre_centro_trabajo VARCHAR(45)


CREATE TABLE clase_nomina (
nomina_id INT PRIMARY KEY,
descripcion_clase_nomina VARCHAR(45));
    
    
CREATE TABLE empleados_cargo_info (
empleado_id INT,
cargo_id INT,
costo_id INT,
trabajo_id INT,
nomina_id INT,
PRIMARY KEY (empleado_id, cargo_id, costo_id, trabajo_id, nomina_id),
FOREIGN KEY (empleado_id) REFERENCES empleados(empleados_id),
FOREIGN KEY (cargo_id) REFERENCES cargos(cargo_id),
FOREIGN KEY (costo_id) REFERENCES centros_costo(costo_id),
FOREIGN KEY (trabajo_id) REFERENCES centros_trabajo(trabajo_id),
FOREIGN KEY (nomina_id) REFERENCES clase_nomina(nomina_id)


CREATE TABLE cargos (
cargo_id INT PRIMARY KEY AUTO_INCREMENT,
descripcion_cargo VARCHAR(45));

CREATE TABLE centros_costo (
costo_id INT PRIMARY KEY,
nombre_centro_costo VARCHAR(45));

CREATE TABLE centros_trabajo (
trabajo_id INT PRIMARY KEY,
nombre_centro_trabajo VARCHAR(45));


CREATE TABLE clase_nomina (
nomina_id INT PRIMARY KEY,
descripcion_clase_nomina VARCHAR(45));