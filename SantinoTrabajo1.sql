/*proyecto1*/
-- otra forma de hacer comentarios
use santinotrabajo1;

CREATE TABLE agencia (
  ID_Agencia int NOT NULL AUTO_INCREMENT,
  ID_Barco int DEFAULT NULL,
  ID_Pedido int DEFAULT NULL,
  ID_Compra int DEFAULT NULL,
  Nombre varchar(150) DEFAULT NULL,
  Mail_Telefono varchar(150) DEFAULT NULL,
  PRIMARY KEY (ID_Agencia),
  foreign key (ID_Agencia) references  cliente(ID_Agencia),
  foreign key (ID_Barco) references barco(ID_Barco),
  foreign key (ID_Pedido) references pedido(ID_Pedido)
  );
  CREATE TABLE barco (
  ID_Barco int NOT NULL AUTO_INCREMENT,
  IMO int DEFAULT NULL,
  ETA varchar(5) DEFAULT NULL,
  Nombre varchar(50) DEFAULT NULL,
  Puerto varchar(50) DEFAULT NULL,
  PRIMARY KEY (ID_Barco)
  );
  CREATE TABLE cliente (
  ID_Cliente int NOT NULL AUTO_INCREMENT,
  ID_Agencia varchar(150) DEFAULT NULL,
  Empresa varchar(150) DEFAULT NULL,
  Mail_telefono varchar(150) DEFAULT NULL,
  PRIMARY KEY (ID_Cliente)
  );
  CREATE TABLE compra (
  ID_Compra int NOT NULL AUTO_INCREMENT,
  Cotizacion varchar(500) NOT NULL,
  Gastos_extras varchar(500) DEFAULT NULL,
  Datos_extras varchar(500) DEFAULT NULL,
  PRIMARY KEY (ID_Compra),
  foreign key (ID_Compra) references agencia(ID_Compra)
  );
  CREATE TABLE empresa (
  Dia int NOT NULL,
  ID_Pedido int NOT NULL,
  ID_Producto_Disponible int NOT NULL,
  ID_Compra int NOT NULL,
  PRIMARY KEY (Dia),
  foreign key (ID_Compra) references compra(ID_Compra)
  );
  CREATE TABLE pedido (
  ID_Pedido int NOT NULL AUTO_INCREMENT,
  ID_Producto_Buscado varchar(400) DEFAULT NULL,
  Gastos_adicionales varchar(250) DEFAULT NULL,
  PRIMARY KEY (ID_Pedido),
  foreign key (ID_Pedido) references empresa(ID_Pedido)
  );
  CREATE TABLE producto_buscado (
  ID_Producto_buscado int NOT NULL AUTO_INCREMENT,
  Producto varchar(400) DEFAULT NULL,
  Cantidad int DEFAULT NULL,
  Tipo_de_Envase varchar(50) DEFAULT NULL,
  PRIMARY KEY (ID_Producto_buscado),
  foreign key (ID_Producto_buscado) references pedido(ID_Producto_buscado)
  );
  CREATE TABLE producto_disponible (
  ID_Producro_disponible int NOT NULL AUTO_INCREMENT,
  Producto varchar(400) DEFAULT NULL,
  Cantidad int DEFAULT NULL,
  PRIMARY KEY (ID_Producro_disponible),
  foreign key (ID_Producto_disponible) references proveedor(ID_Producto_disponible)
  );
  CREATE TABLE proveedor (
  ID_Proveedor int NOT NULL AUTO_INCREMENT,
  ID_Producto_disponible varchar(400) DEFAULT NULL,
  PRIMARY KEY (ID_Proveedor),
  foreign key (ID_Producto_disponible) references empresa(ID_Producto_disponible)
  );