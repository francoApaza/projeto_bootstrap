-- phpMyAdmin SQL Dump
-- version 5.0.3
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Tempo de geração: 04-Nov-2020 às 02:42
-- Versão do servidor: 10.4.14-MariaDB
-- versão do PHP: 7.4.11

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Banco de dados: `fseletro`
--

-- --------------------------------------------------------

--
-- Estrutura da tabela `comentarios`
--

CREATE TABLE `comentarios` (
  `id` int(11) NOT NULL,
  `nome` varchar(100) DEFAULT NULL,
  `msg` varchar(300) DEFAULT NULL,
  `data` datetime DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Extraindo dados da tabela `comentarios`
--

INSERT INTO `comentarios` (`id`, `nome`, `msg`, `data`) VALUES
(1, 'frans', 'teste', '2020-11-03 20:39:11'),
(2, 'frans', 'teste', '2020-11-03 20:55:23'),
(3, 'frans', 'teste', '2020-11-03 20:55:38'),
(4, 'lala', 'teste2', '2020-11-03 20:56:00'),
(5, 'luisa', 'teste3', '2020-11-03 20:59:33'),
(6, 'lena', 'redação', '2020-11-03 21:04:59');

-- --------------------------------------------------------

--
-- Estrutura da tabela `pedidos`
--

CREATE TABLE `pedidos` (
  `cliente` varchar(11) NOT NULL,
  `endereco` varchar(45) NOT NULL,
  `tel` varchar(45) NOT NULL,
  `nome_do_produto` varchar(45) NOT NULL,
  `valor_unitario` decimal(8,2) NOT NULL,
  `quantidade` int(11) NOT NULL,
  `valor_total` decimal(8,2) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Extraindo dados da tabela `pedidos`
--

INSERT INTO `pedidos` (`cliente`, `endereco`, `tel`, `nome_do_produto`, `valor_unitario`, `quantidade`, `valor_total`) VALUES
('0', '', '', '', '0.00', 0, '0.00'),
('Paulo', 'R. José Margarido, 72 - Santana', '1111-2222', 'Geladeira Electrolux Infinity DF8 2 Frost Fre', '3999.00', 1, '3999.00'),
('Carlitos', 'R. Prof. Filadelfo Azevedo, 180 - Vila Nova C', '2121-3232', 'Lava-louças pra família pequena Facilite ', '11999.00', 1, '11999.00'),
('Clauditea', 'R. Minas Gerais, 104-168 - Higienópolis', '2211-3421', 'Lava & Seca Samsung WD4000', '3999.00', 1, '3999.00'),
('Maria da SI', 'Rua Paula Ney, 2-88 - Vila Mariana São Paulo ', '2222-32323', 'Fogão de Piso 4 Bocas Esmaltec', '2299.00', 1, '2299.00'),
('Ana ', 'R. José Paulino, 913 - Bom Retiro', '2222-3333', 'Geladeira personalizada free Side inverse 540', '5019.00', 1, '5019.00'),
('João da sil', 'R. Reims, 96-118 - Jardim das Laranjeiras', '3332-2233', 'Lavadora de Roupas Philco Inverter 12KG', '5019.00', 1, '5019.00'),
('Carlos Andr', 'R. Caetano Pinto, 135-13 - Brás', '3333-65678', 'Geladeira Consul Frost Free Duplex 405 litros', '4999.00', 1, '4999.00'),
('Beatriz ', 'Rua Juca Floriano, 443 - Casa Verde Média', '5555-4443', 'Fogão 5 Bocas Electrolux Prata', '3019.00', 1, '3019.00'),
('Neymar', 'Rua Otávio Tarquínio de Sousa, 1535-1399 - Ca', '6565-5656', 'Electrolux Lava-Louças Inox 14 Serviços', '3899.00', 1, '3899.00'),
('Mayra', 'R. Me. Emilie de Villeneuve, 204 - Vila Santa', '7878-8787', 'Micro-ondas MORPHY RICHARDS 20 L', '3999.00', 1, '3999.00');

-- --------------------------------------------------------

--
-- Estrutura da tabela `produto`
--

CREATE TABLE `produto` (
  `idproduto` int(11) NOT NULL,
  `categoria` varchar(45) NOT NULL,
  `descricao` varchar(45) NOT NULL,
  `preco` decimal(8,2) DEFAULT NULL,
  `precofinal` decimal(8,2) DEFAULT NULL,
  `imagem` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Extraindo dados da tabela `produto`
--

INSERT INTO `produto` (`idproduto`, `categoria`, `descricao`, `preco`, `precofinal`, `imagem`) VALUES
(1, 'geladeira', 'Geladeira personalizada free Side inverse 540', '6399.00', '5019.00', 'imagens/geladeira_personalizada.jpg'),
(2, 'geladeira', 'Geladeira Electrolux Infinity DF8 2 Frost Fre', '4500.00', '3999.00', 'imagens/geladeira_electrolux.jpg'),
(3, 'geladeira', 'Geladeira Consul Frost Free Duplex 405 litros', '5500.00', '4999.00', 'imagens/geladeira_consul.jpg'),
(4, 'fogao', 'Fogão de Piso 4 Bocas Esmaltec Preto, Acendim', '2500.00', '2299.00', 'imagens/fogao_esmaltec.jpg'),
(5, 'fogao', 'Fogão 5 Bocas Electrolux Prata Automático com', '4399.00', '3019.00', 'imagens/fogao_electrolux.jpg'),
(6, 'lavadora', 'Lavadora de Roupas Philco Inverter 12KG PLR12', '6399.00', '5019.00', 'imagens/lavadoura_philco.jpg'),
(7, 'lavadora', 'Lava & Seca Samsung WD4000 de 10.2kg', '4500.00', '3999.00', 'imagens/lavadoura_samsung.jpg'),
(8, 'lava-louca', 'Lava-louças pra família pequena Facilite sua ', '12300.00', '11999.00', 'imagens/lava_louca_facilite.jpg'),
(9, 'lava-louca', 'Electrolux Lava-Louças Inox 14 Serviços (LV14', '5500.00', '3899.00', 'imagens/lava_louca_electrolux.jpg'),
(10, 'micro-ondas', 'Micro-ondas MORPHY RICHARDS 20 L', '4500.00', '3999.00', 'imagens/micro_ondas_morphy.jpg'),
(11, 'micro-ondas', 'Micro-ondas Electrolux 27 L , Função Tira Odo', '3500.00', '2999.00', 'imagens/micro_ondas_electrolux.jpg'),
(12, 'micro-ondas', 'Micro-ondas Philco 30 Litros PME31', '4900.00', '4399.00', 'imagens/micro_ondas_philco.jpg');

--
-- Índices para tabelas despejadas
--

--
-- Índices para tabela `comentarios`
--
ALTER TABLE `comentarios`
  ADD PRIMARY KEY (`id`);

--
-- Índices para tabela `pedidos`
--
ALTER TABLE `pedidos`
  ADD UNIQUE KEY `tel_UNIQUE` (`tel`);

--
-- Índices para tabela `produto`
--
ALTER TABLE `produto`
  ADD PRIMARY KEY (`idproduto`),
  ADD UNIQUE KEY `imagem` (`imagem`) USING BTREE;

--
-- AUTO_INCREMENT de tabelas despejadas
--

--
-- AUTO_INCREMENT de tabela `comentarios`
--
ALTER TABLE `comentarios`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT de tabela `produto`
--
ALTER TABLE `produto`
  MODIFY `idproduto` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
