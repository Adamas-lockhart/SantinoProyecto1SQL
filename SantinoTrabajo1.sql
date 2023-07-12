/*proyecto1
hay que colocar las FK
solo esta la estructura*/
-- otra forma de hacer comentarios
CREATE TABLE `agencia` (
  `ID_Agencia` int NOT NULL AUTO_INCREMENT,
  `ID_Barco` int DEFAULT NULL,
  `ID_Pedido` int DEFAULT NULL,
  `ID_Compra` int DEFAULT NULL,
  `Nombre` varchar(150) DEFAULT NULL,
  `Mail_Telefono` varchar(150) DEFAULT NULL,
  PRIMARY KEY (`ID_Agencia`)
  );
  CREATE TABLE `barco` (
  `ID_Barco` int NOT NULL AUTO_INCREMENT,
  `IMO` int DEFAULT NULL,
  `ETA` varchar(5) DEFAULT NULL,
  `Nombre` varchar(50) DEFAULT NULL,
  `Puerto` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`ID_Barco`)
  );
  CREATE TABLE `cliente` (
  `ID_Cliente` int NOT NULL AUTO_INCREMENT,
  `ID_Agencia` varchar(150) DEFAULT NULL,
  `Empresa` varchar(150) DEFAULT NULL,
  `Mail_telefono` varchar(150) DEFAULT NULL,
  PRIMARY KEY (`ID_Cliente`)
  );
  CREATE TABLE `compra` (
  `ID_Compra` int NOT NULL AUTO_INCREMENT,
  `Cotizacion` varchar(500) NOT NULL,
  `Gastos_extras` varchar(500) DEFAULT NULL,
  `Datos_extras` varchar(500) DEFAULT NULL,
  PRIMARY KEY (`ID_Compra`)
  );
  CREATE TABLE `empresa` (
  `Dia` int NOT NULL,
  `ID_Pedido` int NOT NULL,
  `ID_Producto_Disponible` int NOT NULL,
  `ID_Compra` int NOT NULL,
  PRIMARY KEY (`Dia`)
  );
  CREATE TABLE `pedido` (
  `ID_Pedido` int NOT NULL AUTO_INCREMENT,
  `ID_Producto_Buscado` varchar(400) DEFAULT NULL,
  `Gastos_adicionales` varchar(250) DEFAULT NULL,
  PRIMARY KEY (`ID_Pedido`)
  );
  CREATE TABLE `producto_buscado` (
  `ID_Producto_buscado` int NOT NULL AUTO_INCREMENT,
  `Producto` varchar(400) DEFAULT NULL,
  `Cantidad` int DEFAULT NULL,
  `Tipo_de_Envase` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`ID_Producto_buscado`)
  );
  CREATE TABLE `producto_disponible` (
  `ID_Producro_disponible` int NOT NULL AUTO_INCREMENT,
  `Producto` varchar(400) DEFAULT NULL,
  `Cantidad` int DEFAULT NULL,
  PRIMARY KEY (`ID_Producro_disponible`)
  );
  CREATE TABLE `proveedor` (
  `ID_Proveedor` int NOT NULL AUTO_INCREMENT,
  `ID_Producto_disponible` varchar(400) DEFAULT NULL,
  PRIMARY KEY (`ID_Proveedor`)
  );