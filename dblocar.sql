-- phpMyAdmin SQL Dump
-- version 4.5.1
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: 01-Nov-2022 às 01:38
-- Versão do servidor: 10.1.9-MariaDB
-- PHP Version: 5.6.15

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `dblocar`
--

-- --------------------------------------------------------

--
-- Estrutura da tabela `tb_aluguel`
--

CREATE TABLE `tb_aluguel` (
  `alu_codigo` int(11) NOT NULL,
  `cli_codigo` varchar(200) DEFAULT NULL,
  `alu_data_inicial` date NOT NULL,
  `alu_data_final` date NOT NULL,
  `pro_codigo` int(11) DEFAULT NULL,
  `alu_valor` decimal(6,2) DEFAULT NULL,
  `alu_valor_sinal` decimal(6,2) DEFAULT NULL,
  `alu_resta_pagar` decimal(6,2) DEFAULT NULL,
  `alu_pago_total` varchar(20) DEFAULT NULL,
  `alu_tipo_pagamento` varchar(20) DEFAULT NULL,
  `ven_nome` varchar(80) DEFAULT NULL,
  `alu_observacao` varchar(200) NOT NULL,
  `alu_status` varchar(80) DEFAULT NULL,
  `alu_qtde` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Extraindo dados da tabela `tb_aluguel`
--

INSERT INTO `tb_aluguel` (`alu_codigo`, `cli_codigo`, `alu_data_inicial`, `alu_data_final`, `pro_codigo`, `alu_valor`, `alu_valor_sinal`, `alu_resta_pagar`, `alu_pago_total`, `alu_tipo_pagamento`, `ven_nome`, `alu_observacao`, `alu_status`, `alu_qtde`) VALUES
(11, '1', '2022-10-31', '2022-11-01', 1, '700.00', '700.00', '0.00', 'SIM', 'DÃ©bito', 'Joyce', 'Pago ', 'LOCADO', 1),
(12, '5', '2022-10-31', '2022-11-02', 6, '750.00', '750.00', '0.00', 'SIM', 'DÃ©bito', 'RAMON', 'Pago', 'LOCADO', 1);

-- --------------------------------------------------------

--
-- Estrutura da tabela `tb_cliente`
--

CREATE TABLE `tb_cliente` (
  `cli_codigo` int(11) NOT NULL,
  `cli_nome` varchar(120) NOT NULL,
  `cli_telefone` varchar(13) NOT NULL,
  `cli_cpf` varchar(14) NOT NULL,
  `cli_rua` varchar(120) NOT NULL,
  `cli_numero` varchar(120) NOT NULL,
  `cli_bairro` varchar(40) NOT NULL,
  `cli_cidade` varchar(120) NOT NULL,
  `cli_estado` char(2) NOT NULL,
  `cli_complemento` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Extraindo dados da tabela `tb_cliente`
--

INSERT INTO `tb_cliente` (`cli_codigo`, `cli_nome`, `cli_telefone`, `cli_cpf`, `cli_rua`, `cli_numero`, `cli_bairro`, `cli_cidade`, `cli_estado`, `cli_complemento`) VALUES
(1, 'Maria Vitoria', '19 99488-4455', '256.700.777-00', 'Rua São Leopoldo', '500', 'Nova Morada', 'Sumaré', 'SP', 'Cond. 300, casa 17'),
(2, 'Heitor', '19 99301-5577', '345.669.997-09', 'Rua da Liberdade', '280', 'Jd Aparecida', 'Blumenau', 'SC', 'Apto 15'),
(3, 'Felipe ', '19 34555-5333', '345.667.766-66', 'Rua Primavera', '50', 'Nova Morada', 'Sumaré', 'SP', 'Casa 120'),
(4, 'Guilherme', '19 34666-6431', '456.666.566-66', 'Rua José Dirceu', '30', 'Jardim Boer', 'Pirassununga', 'SC', 'Nada'),
(5, 'Maria Fernandes', '19 34667-7445', '345.678.876-66', 'Rua Floripa', '450', 'Nova Veneza', 'Americana', 'SP', 'Apto 3'),
(6, 'Joao Pedro', '19 34657-8900', '345.876.234-90', 'Rua Itatiba', '5000', 'Jd Salvação', 'Campinas', 'SP', 'Casa'),
(7, 'Jose', '19 34653-4556', '234.569.877-77', 'São Paulo', '50', 'Jd Amélia', 'Valinhos', 'AC', 'Apto 45'),
(8, 'Beatriz Duarte', '19 99457-7665', '123.456.786-54', 'Rua Itatinga', '220', 'JD Florianópolis', 'Santa Bárbara', 'SP', 'Casa'),
(9, 'Joana Freitas', '19 99466-7584', '123.098.567-55', 'Rua SingaPura', '49', 'Jd Mato Grosso', 'Sumaré', 'SP', 'Casa'),
(10, 'Roberta Dias', '19 99467-8756', '123.345.654-75', 'Rua dos Lírios', '450', 'Jd Ipiranga', 'Americana', 'SP', 'Apto'),
(11, 'Ramon Domiciano', '19 99488-3678', '123.456.765-44', 'Rua das DÃ¡lias ', '20', 'Jd Alvorada', 'Americana', 'SP', 'Apto ');

-- --------------------------------------------------------

--
-- Estrutura da tabela `tb_fornecedor`
--

CREATE TABLE `tb_fornecedor` (
  `for_codigo` int(11) NOT NULL,
  `for_pessoa` varchar(20) NOT NULL DEFAULT '0000-00-00',
  `for_cnpj` varchar(18) NOT NULL,
  `for_razao` varchar(40) NOT NULL,
  `for_fantasia` varchar(120) NOT NULL,
  `for_endereco` varchar(120) NOT NULL,
  `for_numero` varchar(120) NOT NULL,
  `for_cidade` varchar(120) NOT NULL,
  `for_estado` char(2) NOT NULL,
  `for_telefone` varchar(14) NOT NULL,
  `for_data_cadastro` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Extraindo dados da tabela `tb_fornecedor`
--

INSERT INTO `tb_fornecedor` (`for_codigo`, `for_pessoa`, `for_cnpj`, `for_razao`, `for_fantasia`, `for_endereco`, `for_numero`, `for_cidade`, `for_estado`, `for_telefone`, `for_data_cadastro`) VALUES
(1, 'JurÃ­dica', '08.799.668/0001-52', '206-2 - Sociedade EmpresÃ¡ria Limitada', 'CARLA LOCACAO DE ROUPAS PARA NOIVAS LTDA', 'AVENIDA GONCALO BOTELHO DE CAMPOS', '2870', 'VARZEA GRANDE', 'MT', '(65) 9606-6456', '2022-10-12 03:00:00'),
(3, 'JurÃ­dica', '16.910.335/0001-87', '206-2 - Sociedade EmpresÃ¡ria Limitada', 'DRESS STORE LOCACAO DE VESTIDOS PARA FESTAS LTDA', 'AVENIDA CASTANHEIRAS', 'S/N', 'BRASILIA', 'DF', '(61) 3627-8870', '2022-10-12 03:00:00'),
(4, 'JurÃ­dica', '35.274.269/0001-40', '206-2 - Sociedade EmpresÃ¡ria Limitada', 'CELINA MEDEIROS ROUPARIA LTDA', 'RODOVIA BR-381 FERNAO DIAS', 'SN', 'BETIM', 'MG', '(31) 9287-2510', '2022-10-12 03:00:00'),
(5, 'JurÃ­dica', '22.505.965/0001-79', '230-5 - Empresa Individual de Responsabi', 'ROUPARIA MODA FEMININA EIRELI', 'R FRANCISCO DA CUNHA', '197', 'SAO PAULO', 'SP', '(11) 2079-1366', '2022-10-12 03:00:00'),
(6, 'JurÃ­dica', '50.211.705/0001-26', '206-2 - Sociedade EmpresÃ¡ria Limitada', 'ESTILO ROUPARIA LTDA', 'AVENIDA VITAL BRASIL', '1297', 'POA', 'SP', '(11) 4639-5909', '2022-10-12 03:00:00');

-- --------------------------------------------------------

--
-- Estrutura da tabela `tb_login`
--

CREATE TABLE `tb_login` (
  `log_codigo` int(11) NOT NULL,
  `log_nome` varchar(120) DEFAULT NULL,
  `log_login` varchar(20) DEFAULT NULL,
  `log_senha` varchar(30) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Extraindo dados da tabela `tb_login`
--

INSERT INTO `tb_login` (`log_codigo`, `log_nome`, `log_login`, `log_senha`) VALUES
(1, 'Vitor Jensen', 'Vitor', '113355'),
(5, 'Ramon', 'ramon', '1100'),
(6, 'Aline', 'aline', '1234');

-- --------------------------------------------------------

--
-- Estrutura da tabela `tb_produto`
--

CREATE TABLE `tb_produto` (
  `pro_codigo` int(11) NOT NULL,
  `pro_foto` varchar(250) NOT NULL,
  `for_fantasia` varchar(120) NOT NULL,
  `pro_descricao` varchar(250) NOT NULL,
  `pro_descricao_add` varchar(250) NOT NULL,
  `pro_custo` decimal(6,2) NOT NULL,
  `pro_indice` int(50) NOT NULL,
  `pro_valor` decimal(6,2) NOT NULL,
  `pro_tamanho` varchar(30) NOT NULL,
  `pro_aluguel` varchar(100) NOT NULL,
  `pro_qtde` int(5) NOT NULL,
  `pro_cor` varchar(10) NOT NULL,
  `pro_status` varchar(10) NOT NULL,
  `pro_tipo` varchar(255) NOT NULL,
  `pro_data_cadastro` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Extraindo dados da tabela `tb_produto`
--

INSERT INTO `tb_produto` (`pro_codigo`, `pro_foto`, `for_fantasia`, `pro_descricao`, `pro_descricao_add`, `pro_custo`, `pro_indice`, `pro_valor`, `pro_tamanho`, `pro_aluguel`, `pro_qtde`, `pro_cor`, `pro_status`, `pro_tipo`, `pro_data_cadastro`) VALUES
(1, 'fotos/1666553540.png', 'ROUPARIA MODA FEMININA EIRELI', 'Vestido branco', 'Vestido ROUPARIA FEMININA EIRELI', '900.00', 200, '700.00', 'M', 'Sim', 20, 'BRANCO', '', 'Longo', '2022-10-23 03:00:00'),
(3, 'fotos/1666572760.jpg', 'CELINA MEDEIROS ROUPARIA LTDA', 'Anel', 'Anel CELINA', '300.00', 250, '50.00', 'UN', 'NÃ£o', 30, 'DOURADO', '', 'Selecione...', '2022-10-23 03:00:00'),
(4, 'fotos/1667055867.png', 'ESTILO ROUPARIA LTDA', 'Vestido Preto ', 'Vestido preto(Estilo rouparia LTDA)', '1000.00', 100, '900.00', 'M', 'Sim', 25, 'PRETO', '', 'Curto', '2022-10-29 03:00:00'),
(6, 'fotos/1667057189.png', 'ESTILO ROUPARIA LTDA', 'Vestido Vermelho ', 'Vestido(Estilo rouparia LTDA)', '800.00', 50, '750.00', 'UN', 'Sim', 15, 'VERMELHO', '', 'Midi', '2022-10-29 03:00:00');

-- --------------------------------------------------------

--
-- Estrutura da tabela `tb_usuario`
--

CREATE TABLE `tb_usuario` (
  `usu_codigo` int(11) NOT NULL,
  `usu_nome` varchar(120) NOT NULL,
  `usu_telefone` varchar(13) NOT NULL,
  `usu_cidade` varchar(40) NOT NULL,
  `usu_bairro` varchar(120) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Extraindo dados da tabela `tb_usuario`
--

INSERT INTO `tb_usuario` (`usu_codigo`, `usu_nome`, `usu_telefone`, `usu_cidade`, `usu_bairro`) VALUES
(1, 'Vitor', '19994883660', 'Americana', 'Ns de Fatima'),
(2, 'Joao', '19995663478', 'Piracicaba', 'Nova Veneza'),
(3, 'Natalia', '19994235678', 'Sumare', 'Jd Alvorada'),
(4, 'Pedro', '19997883542', 'Nova Odessa', 'Vila Dainese'),
(5, 'Vanessa', '19993567890', 'Campinas ', 'Jd dos Lirios'),
(6, 'leticia ', '19996784567', 'Pirassununga', 'Nova Morada'),
(7, 'Juliano', '19993457856', 'Sao Paulo', 'Jd Terra Nova'),
(8, 'Julia', '19993255678', 'Guarulhos', 'Vila Sao Joao'),
(9, 'Roberta', '19998765434', 'Americana', 'Jd Boer'),
(10, 'Felipe', '19997865456', 'Americana', 'Vila Imperial'),
(11, 'Marisa', '19998764567', 'Piracicaba', 'Jd Campo Grande'),
(12, 'Guilherme', '19994678576', 'Veneza', 'Campo Belo'),
(13, 'Vitoria', '19993456789', 'Sorocaba', 'Vila da Salvacao'),
(14, 'Maria Clara', '19993457689', 'Santa Barbara', 'Jd Nova Americana'),
(15, 'Maria Eduarda', '19993245678', 'Campo Grande', 'Vila Sao Bento'),
(16, 'Eduardo', '19998765634', 'Mogi Guacu', 'Jd das Flores'),
(17, 'Mateus', '19996754543', 'Pocos ', 'Vila Sao Joao'),
(18, 'Giovana', '19096745452', 'Sumare', 'Vila Primavera'),
(19, 'Davi', '19991234568', 'Mogi Mirim', 'Vila Igua?u'),
(20, 'Fernando', '19995647345', 'Capivari', 'Cuba');

-- --------------------------------------------------------

--
-- Estrutura da tabela `tb_venda`
--

CREATE TABLE `tb_venda` (
  `vem_codigo` int(11) NOT NULL,
  `cli_nome` varchar(200) DEFAULT NULL,
  `vem_telefone` varchar(13) DEFAULT NULL,
  `vem_cpf` varchar(14) DEFAULT NULL,
  `vem_rua` varchar(200) DEFAULT NULL,
  `vem_numero` varchar(100) DEFAULT NULL,
  `vem_bairro` varchar(200) DEFAULT NULL,
  `vem_cidade` varchar(80) DEFAULT NULL,
  `vem_estado` char(2) DEFAULT NULL,
  `vem_complemento` varchar(200) DEFAULT NULL,
  `vem_data_inicial` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `vem_evento` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `vem_data_compra` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `pro_codigo` int(11) DEFAULT NULL,
  `vem_descricao` varchar(200) DEFAULT NULL,
  `vem_produto` varchar(30) DEFAULT NULL,
  `vem_cor` varchar(10) DEFAULT NULL,
  `vem_tipo` varchar(20) DEFAULT NULL,
  `vem_tamanho` char(2) DEFAULT NULL,
  `vem_qtde` int(5) DEFAULT NULL,
  `vem_valor` decimal(6,2) DEFAULT NULL,
  `vem_valor_sinal` decimal(6,2) DEFAULT NULL,
  `vem_resta_pagar` decimal(6,2) DEFAULT NULL,
  `vem_pago_total` varchar(20) DEFAULT NULL,
  `vem_tipo_pagamento` varchar(20) DEFAULT NULL,
  `ven_nome` varchar(20) DEFAULT NULL,
  `vem_observacao` varchar(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Extraindo dados da tabela `tb_venda`
--

INSERT INTO `tb_venda` (`vem_codigo`, `cli_nome`, `vem_telefone`, `vem_cpf`, `vem_rua`, `vem_numero`, `vem_bairro`, `vem_cidade`, `vem_estado`, `vem_complemento`, `vem_data_inicial`, `vem_evento`, `vem_data_compra`, `pro_codigo`, `vem_descricao`, `vem_produto`, `vem_cor`, `vem_tipo`, `vem_tamanho`, `vem_qtde`, `vem_valor`, `vem_valor_sinal`, `vem_resta_pagar`, `vem_pago_total`, `vem_tipo_pagamento`, `ven_nome`, `vem_observacao`) VALUES
(1, 'Maria Vitoria', '19 99455-6746', '234.567.663/55', 'Rua America II', '35', 'Bairro Jd Sto Antonio', 'Nova Odessa ', 'SP', 'Casa ', '2022-09-04 03:00:00', '2022-09-10 03:00:00', '2022-09-04 03:00:00', 2, '(DRESS)', 'Vestido', 'PRETO', 'Longo', 'GG', 1, '600.00', '300.00', '300.00', 'NÂO', 'Crédito 3X', 'Jessica', 'A pagar');

-- --------------------------------------------------------

--
-- Estrutura da tabela `tb_vendedor`
--

CREATE TABLE `tb_vendedor` (
  `ven_codigo` int(11) NOT NULL,
  `ven_nome` varchar(120) NOT NULL,
  `ven_empresa` varchar(120) NOT NULL,
  `ven_email` varchar(40) NOT NULL,
  `ven_data_cadastro` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Extraindo dados da tabela `tb_vendedor`
--

INSERT INTO `tb_vendedor` (`ven_codigo`, `ven_nome`, `ven_empresa`, `ven_email`, `ven_data_cadastro`) VALUES
(1, 'Vanessa', 'Amiss ModaFesta', 'vanessa@gmail.com', '2022-08-18 03:00:00'),
(2, 'Jessica', 'Amiss ModaFesta', 'jessica@gmail.com', '2022-08-18 03:00:00'),
(3, 'Vania', 'Amiss ModaFesta', 'vania@gmail.com', '2022-08-18 03:00:00'),
(4, 'Aline', 'Amiss ModaFesta', 'aline@gmail.com', '2022-08-18 03:00:00'),
(5, 'Deborah', 'Amiss ModaFesta', 'deborah@gmail.com', '2022-08-18 03:00:00'),
(6, 'Joyce', 'Amiss ModaFesta', 'joyce@gmail.com', '2022-08-18 03:00:00'),
(7, 'Jamilly', 'Amiss ModaFesta', 'jamilly@gmail.com', '2022-08-18 03:00:00'),
(8, 'Aline Gusmao', 'Amiss ModaFesta', 'aline@gmail.com', '2022-08-18 03:00:00'),
(9, 'Adriana', 'Amiss ModaFesta ', 'adriana@gmail.com', '2022-08-18 03:00:00'),
(10, 'Lourdes', 'Amiss ModaFesta', 'lourdes@gmail.com', '2022-08-18 03:00:00'),
(13, 'RAMON', 'AMISS', 'ramondomiciano@gmail.com', '2022-10-08 03:00:00');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `tb_aluguel`
--
ALTER TABLE `tb_aluguel`
  ADD PRIMARY KEY (`alu_codigo`);

--
-- Indexes for table `tb_cliente`
--
ALTER TABLE `tb_cliente`
  ADD PRIMARY KEY (`cli_codigo`);

--
-- Indexes for table `tb_fornecedor`
--
ALTER TABLE `tb_fornecedor`
  ADD PRIMARY KEY (`for_codigo`);

--
-- Indexes for table `tb_login`
--
ALTER TABLE `tb_login`
  ADD PRIMARY KEY (`log_codigo`),
  ADD UNIQUE KEY `log_senha` (`log_senha`),
  ADD UNIQUE KEY `log_login` (`log_login`),
  ADD UNIQUE KEY `log_nome` (`log_nome`);

--
-- Indexes for table `tb_produto`
--
ALTER TABLE `tb_produto`
  ADD PRIMARY KEY (`pro_codigo`);

--
-- Indexes for table `tb_usuario`
--
ALTER TABLE `tb_usuario`
  ADD PRIMARY KEY (`usu_codigo`);

--
-- Indexes for table `tb_venda`
--
ALTER TABLE `tb_venda`
  ADD PRIMARY KEY (`vem_codigo`);

--
-- Indexes for table `tb_vendedor`
--
ALTER TABLE `tb_vendedor`
  ADD PRIMARY KEY (`ven_codigo`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `tb_aluguel`
--
ALTER TABLE `tb_aluguel`
  MODIFY `alu_codigo` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;
--
-- AUTO_INCREMENT for table `tb_cliente`
--
ALTER TABLE `tb_cliente`
  MODIFY `cli_codigo` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;
--
-- AUTO_INCREMENT for table `tb_fornecedor`
--
ALTER TABLE `tb_fornecedor`
  MODIFY `for_codigo` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;
--
-- AUTO_INCREMENT for table `tb_login`
--
ALTER TABLE `tb_login`
  MODIFY `log_codigo` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;
--
-- AUTO_INCREMENT for table `tb_produto`
--
ALTER TABLE `tb_produto`
  MODIFY `pro_codigo` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;
--
-- AUTO_INCREMENT for table `tb_usuario`
--
ALTER TABLE `tb_usuario`
  MODIFY `usu_codigo` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;
--
-- AUTO_INCREMENT for table `tb_venda`
--
ALTER TABLE `tb_venda`
  MODIFY `vem_codigo` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `tb_vendedor`
--
ALTER TABLE `tb_vendedor`
  MODIFY `ven_codigo` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
