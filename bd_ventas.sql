/*
 Navicat Premium Data Transfer

 Source Server         : LOCAL
 Source Server Type    : MySQL
 Source Server Version : 80030
 Source Host           : localhost:3306
 Source Schema         : bd_ventas

 Target Server Type    : MySQL
 Target Server Version : 80030
 File Encoding         : 65001

 Date: 28/05/2024 18:00:54
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for clientes
-- ----------------------------
DROP TABLE IF EXISTS `clientes`;
CREATE TABLE `clientes`  (
  `id` int(0) NOT NULL AUTO_INCREMENT,
  `nombre` varchar(32) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `correo` varchar(128) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `celular` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 19 CHARACTER SET = latin1 COLLATE = latin1_swedish_ci ROW_FORMAT = COMPACT;

-- ----------------------------
-- Records of clientes
-- ----------------------------
INSERT INTO `clientes` VALUES (1, 'Marcelo Quiroga', 'marcelo@mail.com', '77712345');
INSERT INTO `clientes` VALUES (2, 'Caleb Benitez', 'benitez@mail.org', '70012345');
INSERT INTO `clientes` VALUES (3, 'Ursula Gonzales', 'nec@lacus.ca', '79112345');
INSERT INTO `clientes` VALUES (5, 'Juan Carlos Arce', 'conejo@mail.com', '71512345');
INSERT INTO `clientes` VALUES (6, 'Halee Kirby', 'tiam@tempor.com', '72012345');
INSERT INTO `clientes` VALUES (7, 'Marco Perez', 'marco@mail.com', '71526789');
INSERT INTO `clientes` VALUES (8, 'Pedro Marquez', 'peter@mail.com', '72054578');
INSERT INTO `clientes` VALUES (9, 'Juan de Arco', 'juanita@mail.com', '77112456');
INSERT INTO `clientes` VALUES (10, 'Luis Callejas', 'lucho@mial.com', '77122456');
INSERT INTO `clientes` VALUES (16, 'Marcelo Martins', 'marcelo@mail.com', '70012345');
INSERT INTO `clientes` VALUES (17, 'Juan Capriles', 'capri@mail.com', '78945612');
INSERT INTO `clientes` VALUES (18, 'mariela ', 'mariela@mail.com', '52525255');

-- ----------------------------
-- Table structure for productos
-- ----------------------------
DROP TABLE IF EXISTS `productos`;
CREATE TABLE `productos`  (
  `id` int(0) NOT NULL AUTO_INCREMENT,
  `nombre` varchar(32) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `descripcion` text CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `precio` float NOT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 74 CHARACTER SET = latin1 COLLATE = latin1_swedish_ci ROW_FORMAT = COMPACT;

-- ----------------------------
-- Records of productos
-- ----------------------------
INSERT INTO `productos` VALUES (1, 'iPhone 4s', 'Que viene desde Apple', 1000);
INSERT INTO `productos` VALUES (2, 'iPhone 5', 'iPhone 5 from Apple', 150);
INSERT INTO `productos` VALUES (3, 'iPhone 5s', 'iPhone 5s is too expensive.', 300.8);
INSERT INTO `productos` VALUES (5, 'HTC One', 'Best of 2013', 250);
INSERT INTO `productos` VALUES (6, 'God', 'God is not on sale. Sorry.', 132);
INSERT INTO `productos` VALUES (8, 'Latitude e6420', 'Built by ultimate killing machines. For ultimate killing hobies.', 50);
INSERT INTO `productos` VALUES (9, 'Toshiba xd456', 'This jacket could save you from heart attack. And maybe heartbreaks.', 50000);
INSERT INTO `productos` VALUES (10, 'Dell vostro 456', 'This helps you brighten things in the dark.', 650);
INSERT INTO `productos` VALUES (72, 'laptop ', 'lenovo legion ', 8000);
INSERT INTO `productos` VALUES (73, 'Iphone', '32bits', 200.03);

-- ----------------------------
-- Table structure for usuarios
-- ----------------------------
DROP TABLE IF EXISTS `usuarios`;
CREATE TABLE `usuarios`  (
  `id` int(0) NOT NULL AUTO_INCREMENT,
  `email` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `password` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `nombres` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `apellidos` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 5 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of usuarios
-- ----------------------------
INSERT INTO `usuarios` VALUES (1, 'admin@mail.com', '7c4a8d09ca3762af61e59520943dc26494f8941b', 'mari', 'mami');
INSERT INTO `usuarios` VALUES (2, 'marco@mail.com', 'd41d8cd98f00b204e9800998ecf8427e', 'marco', 'contreras');
INSERT INTO `usuarios` VALUES (3, 'luis@mail.com', 'd41d8cd98f00b204e9800998ecf8427e', 'luisa', 'quispe');

-- ----------------------------
-- Table structure for ventas
-- ----------------------------
DROP TABLE IF EXISTS `ventas`;
CREATE TABLE `ventas`  (
  `id` int(0) NOT NULL AUTO_INCREMENT,
  `producto_id` int(0) NOT NULL,
  `cliente_id` int(0) NOT NULL,
  `fecha` date NOT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 17 CHARACTER SET = latin1 COLLATE = latin1_swedish_ci ROW_FORMAT = COMPACT;

-- ----------------------------
-- Records of ventas
-- ----------------------------
INSERT INTO `ventas` VALUES (1, 6, 3, '2029-06-15');
INSERT INTO `ventas` VALUES (2, 10, 5, '2018-01-08');
INSERT INTO `ventas` VALUES (4, 7, 2, '2014-07-08');
INSERT INTO `ventas` VALUES (5, 5, 8, '2019-05-07');
INSERT INTO `ventas` VALUES (15, 5, 1, '2021-05-18');
INSERT INTO `ventas` VALUES (16, 72, 18, '2024-05-27');

SET FOREIGN_KEY_CHECKS = 1;
