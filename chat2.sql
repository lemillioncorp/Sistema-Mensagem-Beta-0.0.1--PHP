-- phpMyAdmin SQL Dump
-- version 4.6.5.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: 15-Fev-2021 às 15:53
-- Versão do servidor: 10.1.21-MariaDB
-- PHP Version: 7.1.1

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `chat2`
--

-- --------------------------------------------------------

--
-- Estrutura da tabela `conversa`
--

CREATE TABLE `conversa` (
  `id_conversa` int(11) NOT NULL,
  `id_usuario_emissor` int(11) NOT NULL,
  `mensagem` text NOT NULL,
  `id_usuario_receptor` int(11) NOT NULL,
  `data` timestamp NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Extraindo dados da tabela `conversa`
--

INSERT INTO `conversa` (`id_conversa`, `id_usuario_emissor`, `mensagem`, `id_usuario_receptor`, `data`) VALUES
(11, 2, 'Bom dia Prof', 1, '2021-02-15 14:33:39'),
(13, 1, 'Bom dia tas como?', 2, '2021-02-15 14:38:38'),
(14, 2, 'Tou bem e VocÃª?', 1, '2021-02-15 14:39:10'),
(15, 1, 'TambÃ©m estou bem...\r\n\r\n\r\nHoje Ã© prova as 16', 2, '2021-02-15 14:47:36'),
(16, 2, 'Ta bem prof...\r\n\r\nNÃ£o podemos adiar?', 1, '2021-02-15 14:48:05');

-- --------------------------------------------------------

--
-- Estrutura da tabela `usuario`
--

CREATE TABLE `usuario` (
  `id` int(11) NOT NULL,
  `nome` varchar(40) NOT NULL,
  `genero` varchar(20) NOT NULL,
  `nivel` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Extraindo dados da tabela `usuario`
--

INSERT INTO `usuario` (`id`, `nome`, `genero`, `nivel`) VALUES
(1, 'Domingos cauze', 'Masculino', 1),
(2, 'Maura Manuel', 'Femenino', 2),
(3, 'Mauro Hernani', 'Masculino', 1),
(4, 'Ana Manuel', 'Femenino', 2);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `conversa`
--
ALTER TABLE `conversa`
  ADD PRIMARY KEY (`id_conversa`),
  ADD KEY `id_usuario_emissor` (`id_usuario_emissor`),
  ADD KEY `id_usuario_receptor` (`id_usuario_receptor`);

--
-- Indexes for table `usuario`
--
ALTER TABLE `usuario`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `conversa`
--
ALTER TABLE `conversa`
  MODIFY `id_conversa` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;
--
-- AUTO_INCREMENT for table `usuario`
--
ALTER TABLE `usuario`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
--
-- Constraints for dumped tables
--

--
-- Limitadores para a tabela `conversa`
--
ALTER TABLE `conversa`
  ADD CONSTRAINT `conversa_ibfk_1` FOREIGN KEY (`id_usuario_emissor`) REFERENCES `usuario` (`id`),
  ADD CONSTRAINT `conversa_ibfk_2` FOREIGN KEY (`id_usuario_receptor`) REFERENCES `usuario` (`id`);

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
