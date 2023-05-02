-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Tempo de geração: 02/05/2023 às 00:52
-- Versão do servidor: 10.4.28-MariaDB
-- Versão do PHP: 8.0.28

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Banco de dados: `xadrez`
--

-- --------------------------------------------------------

--
-- Estrutura para tabela `aberturas_xadrez`
--

CREATE TABLE `aberturas_xadrez` (
  `id` int(11) NOT NULL,
  `nome` varchar(255) DEFAULT NULL,
  `descricao` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Despejando dados para a tabela `aberturas_xadrez`
--

INSERT INTO `aberturas_xadrez` (`id`, `nome`, `descricao`) VALUES
(1, 'Abertura Ruy Lopez', '1.e4 e5 2.Nf3 Nc6 3.Bb5'),
(2, 'Abertura Italiana', '1.e4 e5 2.Nf3 Nc6 3.Bc4'),
(3, 'Gambito Evans', '1.e4 e5 2.Nf3 Nc6 3.Bc4 Bc5 4.b4'),
(4, 'Gambito do Rei', '1.e4 e5 2.f4'),
(5, 'Defesa Francesa', '1.e4 e6'),
(6, 'Defesa Siciliana', '1.e4 c5'),
(7, 'Defesa Caro-Kann', '1.e4 c6'),
(8, 'Defesa Alekhine', '1.e4 Nf6'),
(9, 'Defesa Escandinava', '1.e4 d5'),
(10, 'Defesa Pirc', '1.e4 d6'),
(11, 'Defesa Philidor', '1.e4 e5 2.Nf3 d6'),
(12, 'Abertura Escocesa', '1.e4 e5 2.Nf3 Nc6 3.d4'),
(13, 'Abertura Vienense', '1.e4 e5 2.Nc3'),
(14, 'Abertura Bird', '1.e4 e5 2.Nf3 Nc6 3.Nc3 Nf6 4.d4 exd4 5.Nd5'),
(15, 'Defesa Escandinava Moderna', '1.e4 d5 2.exd5 Nf6'),
(16, 'Defesa Petrov', '1.e4 e5 2.Nf3 Nf6'),
(17, 'Defesa Berlinesa', '1.e4 e5 2.Nf3 Nc6 3.Bb5 Nf6 4.O-O Nxe4 5.d4 Nd6 6.Bxc6 dxc6 7.dxe5 Nf5'),
(18, 'Defesa Holandesa', '1.e4 e6 2.d4 d5 3.Nc3 Nf6'),
(19, 'Defesa Escandinava com 2...Nc6', '1.e4 d5 2.exd5 Nc6'),
(20, 'Abertura do Peão de Dama', '1.e4 d5 2.exd5 Qxd5'),
(21, 'Abertura Ruy Lopez - Troca', '1.e4 e5 2.Nf3 Nc6 3.Bb5 a6 4.Bxc6 dxc6'),
(22, 'Abertura Ruy Lopez - Berlim', '1.e4 e5 2.Nf3 Nc6 3.Bb5 Nf6 4.O-O Nxe4 5.d4 Nd6 6.Bxc6 dxc6 7.dxe5 Nf5 8.Qxd8+ Kxd8'),
(23, 'Abertura Ruy Lopez - Aberta', '1.e4 e5 2.Nf3 Nc6 3.Bb5 a6 4.Ba4'),
(24, 'Abertura Ruy Lopez - Fechada', '1.e4 e5 2.Nf3 Nc6 3.Bb5 a6 4.Ba4 Nf6 5.O-O Be7 6.Re1 b5 7.Bb3 d6 8.c3 O-O 9.h3 Na5 10.Bc2 c5 11.d4 Qc7 12.Nbd2 cxd4 13.cxd4 Nc6 14.Nb3 a5 15.Be3 a4 16.Nbd2 Bd7 17.Rc1 Qb7 18.Nf1 Rfe8 19.Ng3 Bf8 20.Bb1 g6 21.Qd2 Na5 22.Bg5 Bg7 23.Bd3 exd4 24.Nxd4 Nc6 25.Nxc6 Bxc6 26.Qf4 Nd7 27.Qxd6 Ne5 28.Bf1 h6 29.Bf6 Re6 30.Qd2 Bxf6 31.Qxh6 Bg7 32.Qd2 Rae8 33.f4 Nc4 34.Bxc4 bxc4 35.Rxc4 Qb6+ 36.Kh2 Rd8 37.Qc2 Red6 38.Re2 Bb5 39.Rb4 Qa5 40.a3 Bxe2 41.Qxe2 Rd2 42.Qc4 Qa7 43.Rxa4 Qf2 44.Qf1 Rxb2 45.Qxf2 Rxf2 46.e5 Rdd2 47.Ne4 Rxg2+ 48.Kh1 Rb2 49.Ra8+ Bf8 50.Nf6+ Kg7 51.Ne8+ Kh6 52.Nf6 Rgc2 53.Ng4+ Kg7 54.Nf6 Rc1#'),
(25, 'Abertura Ruy Lopez - Marshall', '1.e4 e5 2.Nf3 Nc6 3.Bb5 a6 4.Ba4 Nf6 5.O-O Be7 6.Re1 b5 7.Bb3 O-O 8.c3 d5 9.exd5 Nxd5 10.Nxe5 Nxe5 11.Rxe5 c6 12.d4 Bd6 13.Re1 Qh4 14.g3 Qh3 15.Be3 Bg4 16.Qd3 Rae8 17.Nd2 Re6 18.a4 Qh5 19.axb5 axb5 20.Bxd5 Qxd5 21.Qf1 Rfe8 22.Qg2 Qh5 23.h4 Bb8 24.Ra8 h6 25.Rea1 Kh7 26.R8a6 Qg6 27.Nf1 Rf6 28.Nh2 Bf5 29.d5 Be4 30.Qh3 Bxd5 31.h5 Qe4 32.Kf1 Qxe3 33.Ng4 Qe2+ 34.Kg1 Qe1+ 35.Qf1 Qxf1+ 36.Kxf1 Rf5 37.Ne3 Rxe3 38.Rb6 Bxg3 39.f4 Rxf4+ 40.Kg1 Bf2+ 41.Kh2 Rh4#'),
(26, 'Abertura Ruy Lopez - Chigorin', '1.e4 e5 2.Nf3 Nc6 3.Bb5 a6 4.Ba4 Nf6 5.O-O Be7 6.Re1 b5 7.Bb3 d6 8.c3 O-O 9.h3 Na5 10.Bc2 c5 11.d4 Qc7 12.Nbd2 Bd7 13.Nf1 Rfe8 14.Ng3 Rac8 15.d5 c4 16.Nh2 Nb7 17.f4 exf4 18.Bxf4 Nc5 19.Qf3 a5 20.Rf1 b4 21.Bg5 b3 22.axb3 cxb3 23.Bb1 Bb5 24.Rf2 Ncd7 25.Nf5 Bf8 26.Ng4 Nxg4 27.Qxg4 Ne5 28.Qg3 a4 29.Nh6+ Kh8 30.Ng4 Nxg4 31.hxg4 Ra8 32.Be3 a3 33.bxa3 Qxc3 34.e5 Qxa1 35.Rf1 Bxf1 36.Kh2 Qxb1'),
(27, 'Abertura Ruy Lopez - Exchange', '1.e4 e5 2.Nf3 Nc6 3.Bb5 a6 4.Bxc6 dxc6 5.d4 exd4 6.Qxd4 Qxd4 7.Nxd4 Bd7 8.Nc3 O-O-O 9.Nde2 Ne7 10.Be3 Ng6 11.O-O-O Be7 12.Nf4 Rhe8 13.Nxg6 hxg6 14.f3 Be6 15.Rxd8+ Rxd8 16.Rd1 Rh8 17.h3 g5 18.Ne2 c5 19.Nc3 c6 20.Na4 c4 21.Nc5 Bxc5 22.Bxc5 Rd8 23.Bd4 f6 24.e5 f5 25.c3 f4 26.Rh1 Rh8 27.Kd2 Kd7 28.Ke2 Ke7 29.Kf2 Kf7 30.Rd1 Rd8 31.Rh1 Rh8 32.Rd1 Rd8 33.Rh1 Rh8 34.Rd1 Rd8 35.Rh1 Rh8'),
(28, 'Abertura Italiana', '1.e4 e5 2.Nf3 Nc6 3.Bc4'),
(29, 'Abertura Italiana - Giuoco Piano', '1.e4 e5 2.Nf3 Nc6 3.Bc4 Bc5'),
(30, 'Abertura Italiana - Giuoco Pianissimo', '1.e4 e5 2.Nf3 Nc6 3.Bc4 Bc5 4.c3 Nf6 5.d3'),
(31, 'Abertura Italiana - Deutz Gambit', '1.e4 e5 2.Nf3 Nc6 3.Bc4 Nf6 4.Ng5 d5 5.exd5 b5'),
(32, 'Abertura Italiana - Evans Gambit', '1.e4 e5 2.Nf3 Nc6 3.Bc4 Bc5 4.b4'),
(33, 'Abertura Italiana - Scotch Gambit', '1.e4 e5 2.Nf3 Nc6 3.d4 exd4 4.Bc4 Bc5 5.c3'),
(34, 'Abertura Italiana - Hungarian Defense', '1.e4 e5 2.Nf3 Nc6 3.Bc4 Be7'),
(35, 'Abertura Italiana - Center Game', '1.e4 e5 2.d4 exd4 3.Bc4'),
(36, 'Abertura Italiana - Jerome Gambit', '1.e4 e5 2.Nf3 Nc6 3.Bc4 Bc5 4.Bxf7+'),
(37, 'Abertura Italiana - Max Lange Gambit', '1.e4 e5 2.Nf3 Nc6 3.Bc4 Bc5 4.O-O Nf6 5.d4'),
(38, 'Abertura Italiana - Classical Variation', '1.e4 e5 2.Nf3 Nc6 3.Bc4 Bc5 4.c3 Nf6 5.d3'),
(39, 'Abertura Italiana - Two Knights Defense', '1.e4 e5 2.Nf3 Nc6 3.Bc4 Nf6'),
(40, 'Abertura Italiana - Traxler Counterattack', '1.e4 e5 2.Nf3 Nc6 3.Bc4 Nf6 4.Ng5 Bc5'),
(41, 'Abertura Italiana - Fried Liver Attack', '1.e4 e5 2.Nf3 Nc6 3.Bc4 Nf6 4.Ng5 d5 5.exd5 Nxd5 6.Nxf7'),
(42, 'Abertura Italiana - Rosentreter Gambit', '1.e4 e5 2.Nf3 Nc6 3.Bc4 Nf6 4.Ng5 d5 5.exd5 Na5 6.Bb5+ c6 7.dxc6 bxc6 8.Be2 h6 9.Nh3'),
(43, 'Abertura Italiana - Evans Gambit Declined', '1.e4 e5 2.Nf3 Nc6 3.Bc4 Bc5 4.b4 Bb6'),
(44, 'Abertura Italiana', '1.e4 e5 2.Nf3 Nc6 3.Bc4'),
(45, 'Abertura Italiana - Giuoco Piano', '1.e4 e5 2.Nf3 Nc6 3.Bc4 Bc5'),
(46, 'Abertura Italiana - Giuoco Pianissimo', '1.e4 e5 2.Nf3 Nc6 3.Bc4 Bc5 4.c3 Nf6 5.d3'),
(47, 'Abertura Italiana - Deutz Gambit', '1.e4 e5 2.Nf3 Nc6 3.Bc4 Nf6 4.Ng5 d5 5.exd5 b5'),
(48, 'Abertura Italiana - Evans Gambit', '1.e4 e5 2.Nf3 Nc6 3.Bc4 Bc5 4.b4'),
(49, 'Abertura Italiana - Scotch Gambit', '1.e4 e5 2.Nf3 Nc6 3.d4 exd4 4.Bc4 Bc5 5.c3'),
(50, 'Abertura Italiana - Hungarian Defense', '1.e4 e5 2.Nf3 Nc6 3.Bc4 Be7'),
(51, 'Abertura Italiana - Center Game', '1.e4 e5 2.d4 exd4 3.Bc4'),
(52, 'Abertura Italiana - Jerome Gambit', '1.e4 e5 2.Nf3 Nc6 3.Bc4 Bc5 4.Bxf7+'),
(53, 'Abertura Italiana - Max Lange Gambit', '1.e4 e5 2.Nf3 Nc6 3.Bc4 Bc5 4.O-O Nf6 5.d4'),
(54, 'Abertura Italiana - Classical Variation', '1.e4 e5 2.Nf3 Nc6 3.Bc4 Bc5 4.c3 Nf6 5.d3'),
(55, 'Abertura Italiana - Two Knights Defense', '1.e4 e5 2.Nf3 Nc6 3.Bc4 Nf6'),
(56, 'Abertura Italiana - Traxler Counterattack', '1.e4 e5 2.Nf3 Nc6 3.Bc4 Nf6 4.Ng5 Bc5'),
(57, 'Abertura Italiana - Fried Liver Attack', '1.e4 e5 2.Nf3 Nc6 3.Bc4 Nf6 4.Ng5 d5 5.exd5 Nxd5 6.Nxf7'),
(58, 'Abertura Italiana - Rosentreter Gambit', '1.e4 e5 2.Nf3 Nc6 3.Bc4 Nf6 4.Ng5 d5 5.exd5 Na5 6.Bb5+ c6 7.dxc6 bxc6 8.Be2 h6 9.Nh3'),
(59, 'Abertura Italiana - Evans Gambit Declined', '1.e4 e5 2.Nf3 Nc6 3.Bc4 Bc5 4.b4 Bb6'),
(60, 'Abertura Italiana - Evans Gambit Declined, 5...Bxb', '1.e4 e5 2.Nf3 Nc6 3.Bc4 Bc5 4.b4 Bb6 5.b5 Na5 6.Nxe5 Qe7 7.Bxf7+ Kd8 8.d4 d6'),
(61, 'Abertura Italiana - Petrov Defense', '1.e4 e5 2.Nf3 Nc6 3.Bc4 Nf6'),
(62, 'Abertura Italiana - Cozio Defense', '1.e4 e5 2.Nf3 Nc6 3.Bc4 Nge7'),
(63, 'Abertura Italiana - Hungarian Gambit', '1.e4 e5 2.Nf3 Nc6 3.Bc4 Be7 4.d4 exd4 5.c3 dxc3 6.Qd5 Nh6 7.Bxh6 O-O 8.Nxc3 gxh6'),
(64, 'Abertura Italiana - Parham Attack', '1.e4 e5 2.Nf3 Nc6 3.d4 exd4 4.Bc4'),
(65, 'Abertura Italiana - Scotch Four Knights Game', '1.e4 e5 2.Nf3 Nc6 3.Nc3 Nf6 4.d4 exd4 5.Nxd4 Bc5 6.Be3 Bb6 7.Bc4 d6 8.O-O O-O'),
(66, 'Abertura Italiana - Rousseau Gambit', '1.e4 e5 2.Nf3 Nc6 3.Bc4 f5'),
(67, 'Abertura Italiana - Italian Gambit', '1.e4 e5 2.Nf3 Nc6 3.Bc4 Bc5 4.d4 exd4 5.O-O'),
(68, 'Abertura Italiana - Urusov Gambit', '1.e4 e5 2.Nf3 Nc6 3.Bc4 Bc5 4.b4'),
(69, 'Abertura Italiana - Evans Gambit Declined, 5...Bc5', '1.e4 e5 2.Nf3 Nc6 3.Bc4 Bc5 4.b4 Bc5'),
(70, 'Abertura Italiana - Rosentreter Gambit Deferred', '1.e4 e5 2.Nf3 Nc6 3.Bc4 Nf6 4.Ng5 d5 5.exd5 Nxd5 6.d4 exd4 7.O-O Be7 8.Nxf7 Kxf7 9.Qh5+ g6 10.Bxd5+ Ke8 11.Qf3 Rf8 12.Bxc6+ bxc6 13.Qxc6+ Bd7 14.Qc4 c5 15.Bh6 Rf7 16.Re1 Qb6 17.Nd2 Qb5 18.Qd5 Bc6 19.Qe6 Bd7 20.Qd6 Qc6 21.Qg3 Kd8 22.Nc4 Qc7 23.Rxe7 Qxg3 24.hxg3 Rxe7 25.Bg5 Ke8 26.Bxe7 Kxe7 27.Re1+ Kf6 28.Re5 Rc8 29.Rd5 Be6 30.Rxc5 Rxc5 31.bxc5 Bxc4 32.a3 Ke5'),
(71, 'Abertura Italiana - Blackburne Shilling Gambit', '1.e4 e5 2.Nf3 Nc6 3.Bc4 Nd4 4.Nxe5 Qg5 5.Nxf7 Qxg2 6.Rf1 Qxe4+ 7.Be2 Nf3#'),
(72, 'Gambito do Rei - Accepted', '1.e4 e5 2.f4 exf4'),
(73, 'Gambito do Rei - Declined', '1.e4 e5 2.f4 d5'),
(74, 'Gambito do Rei - Falkbeer Counter Gambit', '1.e4 e5 2.f4 d5 3.exd5 e4'),
(75, 'Gambito do Rei - Fischer Defense', '1.e4 e5 2.f4 exf4 3.Nf3 d6'),
(76, 'Gambito do Rei - Kieseritzky Gambit', '1.e4 e5 2.f4 exf4 3.Nf3 g5 4.h4 g4 5.Ne5'),
(77, 'Gambito do Rei - King\'s Knight Gambit', '1.e4 e5 2.f4 exf4 3.Nf3 g5 4.h4 g4 5.Ng5'),
(78, 'Gambito do Rei - King\'s Pawn Game', '1.e4 e5 2.f4'),
(79, 'Gambito do Rei - Lopez Defense', '1.e4 e5 2.f4 Bc5'),
(80, 'Gambito do Rei - Macleod Attack', '1.e4 e5 2.f4 d5 3.exd5 e4 4.d3 Nf6 5.dxe4 Nxe4 6.Nf3 Bc5 7.Qe2'),
(81, 'Gambito do Rei - Mengarini Variation', '1.e4 e5 2.f4 d5 3.exd5 c6'),
(82, 'Gambito do Rei - Muzio Gambit', '1.e4 e5 2.f4 exf4 3.Nf3 g5 4.Bc4 g4 5.O-O gxf3 6.Bxf7+ Kxf7 7.Qxf3 Qf6 8.e5 Qxe5 9.d4 Qxd4+ 10.Be3 Qf6 11.Bxf4 Bc5+ 12.Kh1 Ne7 13.Qh5+ Ng6 14.Nc3 c6 15.Ne4 Qf5 16.Ng5+ Kg7 17.Be5+ Qxe5 18.Rf7+ Kg8 19.Raf1 Be6 20.Nxh7 Bxf7 21.Rxf7 Qe1+ 22.Rf1 Qxf1#'),
(83, 'Defesa Francesa - Advance Variation', '1.e4 e6 2.d4 d5 3.e5'),
(84, 'Defesa Francesa - Burn Variation', '1.e4 e6 2.d4 d5 3.Nc3 Nf6 4.Bg5 dxe4'),
(85, 'Defesa Francesa - Classical Variation', '1.e4 e6 2.d4 d5 3.Nc3 Nf6 4.Bg5 Be7 5.e5 Nfd7 6.h4'),
(86, 'Defesa Francesa - Exchange Variation', '1.e4 e6 2.d4 d5 3.exd5 exd5'),
(87, 'Defesa Francesa - King\'s Indian Attack', '1.e4 e6 2.d3 d5 3.Nd2 c5 4.Ngf3 Nc6 5.g3'),
(88, 'Defesa Francesa - McCutcheon Variation', '1.e4 e6 2.d4 d5 3.Nc3 Nf6 4.Bg5 Bb4'),
(89, 'Defesa Francesa - Tarrasch Variation', '1.e4 e6 2.d4 d5 3.Nd2'),
(90, 'Defesa Francesa - Winawer Variation', '1.e4 e6 2.d4 d5 3.Nc3 Bb4'),
(91, 'Defesa Francesa - Winawer Variation, Advance Varia', '1.e4 e6 2.d4 d5 3.Nc3 Bb4 4.e5 c5 5.a3 Bxc3+ 6.bxc3 Ne7 7.Qg4 Qc7 8.Qxg7 Rg8 9.Qxh7 cxd4 10.Ne2 Nbc6 11.f4 Bd7 12.Qd3 dxc3 13.h4 O-O-O 14.h5 Nf5 15.h6 Rg6 16.h7 Rh8 17.g4 Rxg4 18.Bh3 Rh4 19.Bxf5 Rxh1+ 20.Kf2 exf5 21.Qxd5 Be6 22.Qxh1 Qb6+ 23.Be3 Qb2 24.Rg1 Qxc2 25.Rg8+'),
(92, 'Defesa Francesa - Winawer Variation, Poisoned Pawn', '1.e4 e6 2.d4 d5 3.Nc3 Bb4 4.e5 c5 5.a3 Bxc3+ 6.bxc3 Ne7 7.Qg4 Qc7 8.Qxg7 Rg8 9.Qxh7 cxd4 10.Ne2 Nbc6 11.f4 Bd7 12.Qd3 dxc3 13.Nxc3 a6 14.Rb1 Rc8 15.Ne2 Na5 16.Nd4 Nc4 17.h4 f6 18.exf6 Nf5 19.Nxf5 exf5 20.Qxd5'),
(93, 'Defesa Siciliana', '1.e4 c5'),
(94, 'Defesa Siciliana - Alapin Variation', '1.e4 c5 2.c3'),
(95, 'Defesa Siciliana - Canal-Sokolsky Attack', '1.e4 c5 2.Nf3 e6 3.b4'),
(96, 'Defesa Siciliana - Grand Prix Attack', '1.e4 c5 2.Nc3 Nc6 3.f4'),
(97, 'Defesa Siciliana - Najdorf Variation', '1.e4 c5 2.Nf3 d6 3.d4 cxd4 4.Nxd4 Nf6 5.Nc3 a6'),
(98, 'Defesa Siciliana - Scheveningen Variation', '1.e4 c5 2.Nf3 d6 3.d4 cxd4 4.Nxd4 Nf6 5.Nc3 e6'),
(99, 'Defesa Siciliana - Smith-Morra Gambit', '1.e4 c5 2.d4 cxd4 3.c3'),
(100, 'Defesa Siciliana - Wing Gambit', '1.e4 c5 2.b4'),
(101, 'Defesa Siciliana - Dragon Variation', '1.e4 c5 2.Nf3 d6 3.d4 cxd4 4.Nxd4 Nf6 5.Nc3 g6'),
(102, 'Defesa Siciliana - Accelerated Dragon', '1.e4 c5 2.Nf3 Nc6 3.d4 cxd4 4.Nxd4 g6'),
(103, 'Defesa Siciliana - Kalashnikov Variation', '1.e4 c5 2.Nf3 Nc6 3.d4 cxd4 4.Nxd4 e5'),
(104, 'Defesa Siciliana - Sveshnikov Variation', '1.e4 c5 2.Nf3 Nc6 3.d4 cxd4 4.Nxd4 Nf6 5.Nc3 e5 6.Ndb5 d6 7.Bg5 a6 8.Na3 b5'),
(105, 'Defesa Siciliana - Four Knights Variation', '1.e4 c5 2.Nf3 e6 3.d4 cxd4 4.Nxd4 Nf6 5.Nc3 Nc6'),
(106, 'Defesa Siciliana - O\'Kelly Variation', '1.e4 c5 2.Nf3 a6'),
(107, 'Caro-Kann - Advance Variation', '1.e4 c6 2.d4 d5 3.e5'),
(108, 'Caro-Kann - Exchange Variation', '1.e4 c6 2.d4 d5 3.exd5 cxd5'),
(109, 'Caro-Kann - Classical Variation', '1.e4 c6 2.d4 d5 3.Nc3 dxe4 4.Nxe4 Bf5 5.Ng3 Bg6 6.h4 h6 7.Nf3 Nd7'),
(110, 'Caro-Kann - Short Variation', '1.e4 c6 2.d4 d5 3.Nc3 dxe4 4.Nxe4 Nd7 5.Nf3 Ngf6 6.Bd3 Nxe4 7.Bxe4 Nf6 8.Bd3 Bf5'),
(111, 'Caro-Kann - Two Knights Variation', '1.e4 c6 2.Nc3 d5 3.Nf3'),
(112, 'Caro-Kann - Fantasy Variation', '1.e4 c6 2.d4 d5 3.f3'),
(113, 'Caro-Kann - Bronstein-Larsen Variation', '1.e4 c6 2.d4 d5 3.Nc3 dxe4 4.Nxe4 Nd7 5.Ng5 Ngf6 6.Bd3 e6 7.N1f3 h6 8.Nxe6 Qe7 9.O-O fxe6 10.Bg6+ Kd8'),
(114, 'Caro-Kann - Hillbilly Attack', '1.e4 c6 2.Bc4 d5 3.Bb3'),
(115, 'Caro-Kann - Karpov Variation', '1.e4 c6 2.d4 d5 3.Nc3 dxe4 4.Nxe4 Bf5 5.Ng3 Bg6 6.h4 h6 7.Nf3 Nd7 8.h5 Bh7 9.Bd3 Bxd3 10.Qxd3 e6 11.Bd2 Ngf6 12.O-O-O Be7'),
(116, 'Caro-Kann - Gurgenidze Counterattack', '1.e4 c6 2.d4 d5 3.Nc3 dxe4 4.Nxe4 Nf6 5.Nxf6+ gxf6'),
(117, 'Caro-Kann - Tartakower Variation', '1.e4 c6 2.d4 d5 3.Nd2'),
(118, 'Caro-Kann - Maroczy Bind', '1.e4 c6 2.d4 d5 3.Nc3 dxe4 4.Nxe4 Nd7 5.Ng5 Ngf6 6.Bd3 e6 7.N1f3 Bd6 8.Qe2 h6 9.Ne4 Nxe4 10.Qxe4 Qc7 11.O-O b6 12.c4 Bb7 13.Qg4 O-O-O'),
(119, 'Defesa Alekhine', '1.e4 Nf6'),
(120, 'Alekhine - Four Pawns Attack', '1.e4 Nf6 2.e5 Nd5 3.d4 d6 4.c4 Nb6 5.f4 dxe5 6.fxe5 c5 7.d5 e6 8.Nc3 exd5 9.cxd5 c4'),
(121, 'Alekhine - Balogh Variation', '1.e4 Nf6 2.e5 Nd5 3.d4 d6 4.c4 Nb6 5.exd6 exd6 6.Nc3 Be7 7.Be3 O-O 8.Bd3 Nc6 9.Nge2 Bg4'),
(122, 'Alekhine - Exchange Variation', '1.e4 Nf6 2.e5 Nd5 3.d4 d6 4.c4 Nb6 5.exd6'),
(123, 'Alekhine - Hunt Variation', '1.e4 Nf6 2.e5 Nd5 3.c4 Nb6 4.c5 Nd5 5.Bc4 e6 6.Nc3 c6 7.Ne4 b6 8.d4 Ba6 9.b3'),
(124, 'Alekhine - Maróczy Variation', '1.e4 Nf6 2.e5 Nd5 3.d4 d6 4.c4 Nb6 5.f4'),
(125, 'Alekhine - Modern Variation', '1.e4 Nf6 2.e5 Nd5 3.d4 d6 4.c4 Nb6 5.Nf3'),
(126, 'Alekhine - Scandinavian Variation', '1.e4 Nf6 2.e5 Nd5 3.d4 d6 4.c4 Nb6 5.Nc3 dxe5 6.dxe5 Qxd1+ 7.Kxd1 Nc6'),
(127, 'Alekhine - Sämisch Attack', '1.e4 Nf6 2.e5 Nd5 3.d4 d6 4.Nf3 dxe5 5.Nxe5 g6'),
(128, 'Alekhine - Spielmann Attack', '1.e4 Nf6 2.e5 Nd5 3.d4 d6 4.c4 Nb6 5.f4 dxe5 6.fxe5 Nc6 7.Be3 Bf5 8.Nc3 e6 9.Nf3 Bg4'),
(129, 'Alekhine - Two Pawn Attack', '1.e4 Nf6 2.e5 Nd5 3.c4 Nb6 4.c5 Nd5 5.Nc3 e6 6.d4 d6 7.cxd6 cxd6 8.Nf3 Nc6 9.Bd3'),
(130, 'Alekhine - Brooklyn Variation', '1.e4 Nf6 2.e5 Nd5 3.Nc3 Nxc3 4.dxc3 d5 5.exd6 Qxd6 6.Be3 Qxd1+ 7.Rxd1 a6'),
(131, 'Defesa Escandinava - Gambito Islandês', '1.e4 d5 2.exd5 Nf6'),
(132, 'Defesa Escandinava - Gambito Gubinsky-Melts', '1.e4 d5 2.exd5 Qxd5 3.Nc3 Qa5 4.d4 Nf6 5.Nf3 Bg4 6.h3 Bh5 7.g4 Bg6 8.Ne5'),
(133, 'Defesa Escandinava - Gambito Kiel', '1.e4 d5 2.exd5 Nf6 3.c4 c6'),
(134, 'Defesa Escandinava - Gambito Pytel-Wade', '1.e4 d5 2.exd5 Nf6 3.d4 Bg4'),
(135, 'Defesa Pirc - 2...d6', '1.e4 d6 2.d4 Nf6'),
(136, 'Defesa Pirc - Sistema austríaco', '1.e4 d6 2.d4 Nf6 3.Nc3 g6 4.f4'),
(137, 'Defesa Pirc - Ataque austríaco', '1.e4 d6 2.d4 Nf6 3.Nc3 g6 4.Be3 c6 5.Qd2 b5'),
(138, 'Defesa Pirc - Ataque austríaco - 4...Bg7', '1.e4 d6 2.d4 Nf6 3.Nc3 g6 4.Be3 Bg7 5.Qd2 c6 6.f3 b5 7.Nge2 Nbd7 8.Bh6 Bxh6 9.Qxh6 Nb6 10.Ng3 e5'),
(139, 'Defesa Philidor - 2...Nc6', '1.e4 e5 2.Nf3 d6 3.d4 Nc6'),
(140, 'Defesa Philidor - Ataque Hanham', '1.e4 e5 2.Nf3 d6 3.d4 Nd7 4.Nc3 Ngf6 5.Be2 Be7 6.O-O O-O 7.Re1 c6 8.a4 a5 9.Bf1'),
(141, 'Defesa Philidor - Troca Lopez', '1.e4 e5 2.Nf3 d6 3.d4 exd4 4.Nxd4 Nf6 5.Nc3 Be7 6.Bc4'),
(142, 'Defesa Philidor - Gambito Morphy', '1.e4 e5 2.Nf3 d6 3.d4 exd4 4.Bc4'),
(143, 'Abertura Escocesa - Gambito MacLeod', '1.e4 e5 2.Nf3 Nc6 3.Nc3 Nf6 4.d4 exd4 5.Nd5'),
(144, 'Abertura Escocesa - Gambito Abbazia', '1.e4 e5 2.Nf3 Nc6 3.d4 exd4 4.c3'),
(145, 'Abertura Escocesa - Gambito Schmidt', '1.e4 e5 2.Nf3 Nc6 3.Nc3 Nf6 4.d4 exd4 5.Nd5 Nxe4 6.Qe2 f5 7.Ng5'),
(146, 'Abertura Escocesa - Gambito de Göring', '1.e4 e5 2.Nf3 Nc6 3.d4 exd4 4.c3 dxc3 5.Bc4 cxb2 6.Bxb2 d5'),
(147, 'Abertura Vienense', '1.e4 e5 2.Nc3'),
(148, 'Abertura Vienense - Gambito Hamppe-Allgaier', '1.e4 e5 2.Nc3 Nc6 3.f4 exf4 4.Nf3 g5 5.h4 g4 6.Ng5 h6 7.Nxf7 Kxf7 8.d4 d5 9.exd5 Qe7+ 10.Kf2 g3+ 11.Kg1 Nxd4 12.Bxf4 Nf5'),
(149, 'Abertura Vienense - Gambito Fritz', '1.e4 e5 2.Nc3 Nc6 3.f4 exf4 4.Nf3 g5 5.h4 g4 6.Ng5 h6 7.Nxf7 Kxf7 8.d4 f3 9.Bc4+ Kg7 10.gxf3 Be7 11.Be3 Bxh4+ 12.Kd2 Bg5 13.f4 Bf6 14.Qxg4+ Kf8 15.e5'),
(150, 'Abertura Vienense - Gambito Mieses', '1.e4 e5 2.Nc3 Nc6 3.f4 exf4 4.Nf3 g5 5.h4 g4 6.Ng5 h6 7.Nxf7 Kxf7 8.d4 d5 9.exd5 Qe7+ 10.Kf2 g3+ 11.Kg1 Nxd4 12.Bxf4 Qf6'),
(151, 'Abertura Vienense - Ataque de Paulsen', '1.e4 e5 2.Nc3 Nc6 3.f4 exf4 4.Nf3 g5 5.h4 g4 6.Ng5 h6 7.Nxf7 Kxf7 8.d4 d6 9.Bxf4 Bg7 10.Bc4+ Ke8 11.Be3 Nge7 12.Qd2 Na5 13.Bd3 d5 14.exd5 Nxd5 15.Bg6+ Kf8 16.O-O+ Kg8 17.Bf7+ Kh7 18.Qd3+ Bf5 19.Qxf5#'),
(152, 'Abertura Bird', '1.f4 d5 2.Nf3'),
(153, 'Abertura Bird: Leningrado', '1.f4 f5 2.Nf3 Nf6 3.e3 g6 4.b3 Bg7 5.Bb2 O-O 6.Be2 d6 7.O-O Nc6 8.c4 Qe8'),
(154, 'Abertura Bird: From Gambit', '1.f4 e5'),
(155, 'Abertura Bird: From Gambit, Lasker Variation', '1.f4 e5 2.fxe5 d6 3.exd6 Bxd6 4.Nf3 g5 5.g3 g4 6.Nh4 Ne7'),
(156, 'Abertura Bird: Dutch Variation', '1.f4 f5'),
(157, 'Abertura Bird: Dutch Variation, Henneberger Gambit', '1.f4 f5 2.e4 fxe4 3.d3 exd3 4.Bxd3 Nf6 5.Nf3 d6 6.Ng5 Bg4 7.Qxg4 Nxg4 8.Ne6 Qd7 9.Bf5 Qc6 10.Bxg4 Qxg2'),
(158, 'Abertura Bird: From Gambit, Myers Defense', '1.f4 e5 2.fxe5 d6 3.exd6 Bxd6 4.Nf3 g5 5.d4 g4 6.Ng5 h6 7.Ne4 f5'),
(159, 'Abertura Bird: From Gambit, Lasker Variation Defer', '1.f4 e5 2.fxe5 d6 3.exd6 Bxd6 4.Nf3 g5 5.g3 g4 6.Nh4 Be7 7.Ng2'),
(160, 'Abertura Bird: From Gambit, Naselwaus Gambit', '1.f4 e5 2.fxe5 d6 3.exd6 Bxd6 4.Nf3 g5 5.e4 g4 6.e5 gxf3 7.exd6 fxg2 8.Qe2+ Kf8 9.dxc7 Qh4+ 10.Kd1 gxh1=Q 11.cxb8=Q Rxb8'),
(161, 'Abertura Bird: Lasker Variation, Simmonds Gambit', '1.f4 d5 2.Nf3 Bg4 3.e3 Nd7 4.h3 Bxf3 5.Qxf3 c6 6.b3 e5 7.Bb2 Bd6 8.c4 Ngf6 9.cxd5 cxd5 10.Nc3 exf4 11.Nxd5 O-O 12.Nxf4 Ne5 13.Qe2 Ne4'),
(162, 'Defesa Escandinava Moderna, Gambito 2...Nf6', '1.e4 d5 2.exd5 Nf6'),
(163, 'Defesa Escandinava Moderna, Gambito 2...Nxd5', '1.e4 d5 2.exd5 Nxd5'),
(164, 'Defesa Escandinava Moderna, Linha Principal 2...Nf', '1.e4 d5 2.exd5 Nf6 3.d4 Nxd5'),
(165, 'Defesa Escandinava Moderna, Linha Principal 2...Nf', '1.e4 d5 2.exd5 Nf6 3.d4 Nxd5 4.Nf3'),
(166, 'Defesa Escandinava Moderna, Linha Principal 2...Nf', '1.e4 d5 2.exd5 Nf6 3.d4 Nxd5 4.Nf3 g6');

--
-- Índices para tabelas despejadas
--

--
-- Índices de tabela `aberturas_xadrez`
--
ALTER TABLE `aberturas_xadrez`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT para tabelas despejadas
--

--
-- AUTO_INCREMENT de tabela `aberturas_xadrez`
--
ALTER TABLE `aberturas_xadrez`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=167;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
