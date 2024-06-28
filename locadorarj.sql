-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Tempo de geração: 28-Jun-2024 às 16:15
-- Versão do servidor: 10.4.27-MariaDB
-- versão do PHP: 8.2.0

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Banco de dados: `locadorarj`
--

-- --------------------------------------------------------

--
-- Estrutura da tabela `cliente`
--

CREATE TABLE `cliente` (
  `pk_cpf` varchar(11) NOT NULL,
  `nome` varchar(64) DEFAULT NULL,
  `endereco` varchar(128) DEFAULT NULL,
  `email` varchar(64) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Extraindo dados da tabela `cliente`
--

INSERT INTO `cliente` (`pk_cpf`, `nome`, `endereco`, `email`) VALUES
('08520170650', 'Simone Maya Rebeca', 'Rua Giovanni Filho', 'simonerebeca@gmail.com'),
('17272200480', 'Theo Nelson Teixeira', 'Pra?a Jo?o Ol?mpio Cordeiro', 'theo-teixeira83@hotmail.com'),
('18619443224', 'Rodrigo Rafael Levi Peixoto', 'Rua Felipe Neves', 'rodrigo_rafael_peixoto@compuativa.com.br'),
('23365521593', 'Ryan Bryan Peixoto', 'Rua Tom?s Rodrigues', 'ryanbryanpeixoto@poli.ufrj.br'),
('32223191541', 'Isabelly Bianca Ferreira', 'Rua Paraguai', 'isabelly-ferreira73@grupointegraambiental.com.br'),
('33230923090', 'Pietro Ian da Crzu', 'Rua Nova', 'pietro_dacruz@uniara.com.br'),
('35850142088', 'M?rcio Osvaldo Drumond', 'Avenida Bar?o de Maruim', 'marcio-drumond78@vnews.com.br'),
('41237231442', 'Pietro Theo Igor Caldeira', 'Rua Doutor Celso Oliva', 'pietrotheocaldeira@queirozgalvao.com'),
('42492388735', 'Sebastiana Alessandra Pinto', 'Rua S?o Pedro', 'sebastiana.alessandra.pinto@cressem.com.br'),
('44880452513', 'Vit?ria Aurora Carolina Ribeiro', 'Rua 26', 'vitoria_ribeiro@technew.ind.br'),
('55292011610', 'Leonardo Matheus Henrique Porto', 'Rua Arcimbald', 'Leonardo.matheus.porto@hotmail.com'),
('58225575202', 'Gabriel Miguel Bernardo Almada', 'Rua B', 'gabriel-amada78@araraquara.com.br'),
('60320472701', 'Martin Marcelo Teixeira', 'Vila Alexandre Bourbon', 'martin_teixeira@casaarte.com.br'),
('67407933790', 'Francisca Alessandra Emily Mendes', 'Rua Francisco Hemet?rio do Couto', 'francisca-mendes91@timbrasil.com.br'),
('68287910455', 'Gael Lucca Cau? Rezende', 'Rua Jo?o Concei??o de Menezes', 'gael.rezende@etec.sp.gov.br'),
('76168972756', 'Gabrielly Raimunda Pires', 'Travessa Padre C?cero', 'gabrielly-pires99@beminvestir.com.br'),
('76884202025', 'Heloisa Valentina', 'Rua A', 'heloisa_valentina@mrv.com.br'),
('83596548837', 'Osvaldo Hugo da Mata', 'Rua Flamboyant', 'osvaldo.hugo.damata@signatreinamentos.com.br');

-- --------------------------------------------------------

--
-- Estrutura da tabela `diretor`
--

CREATE TABLE `diretor` (
  `pk_id` int(11) NOT NULL,
  `nome` varchar(64) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Extraindo dados da tabela `diretor`
--

INSERT INTO `diretor` (`pk_id`, `nome`) VALUES
(1, 'Martin Scorsese'),
(2, 'Steven Spielberg'),
(3, 'Quentin Tarantino'),
(4, 'Christopher Nolan'),
(5, 'Tim Burton'),
(6, 'Stanley Kubrick'),
(7, 'Woody Allen'),
(9, 'Glauber Rocha'),
(10, 'Nelson Pereira dos Santos'),
(11, 'Daniel Rezende'),
(12, 'Kleber Mendon?a Filho'),
(13, 'Alfred Hitchcock'),
(14, 'Akira Kurosawa'),
(15, 'Jean-Luc Godard'),
(16, 'George Lucas'),
(17, 'Andrei Tarkovski'),
(18, 'Clint Eastwood'),
(19, 'Rob Zombie');

-- --------------------------------------------------------

--
-- Estrutura da tabela `filme`
--

CREATE TABLE `filme` (
  `pk_id` int(11) NOT NULL,
  `fk_diretor` int(11) DEFAULT NULL,
  `fk_genero` int(11) DEFAULT NULL,
  `titulo` varchar(128) DEFAULT NULL,
  `duracao` int(3) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Extraindo dados da tabela `filme`
--

INSERT INTO `filme` (`pk_id`, `fk_diretor`, `fk_genero`, `titulo`, `duracao`) VALUES
(1, 1, 4, 'Taxi Driver', 61),
(2, 2, 5, 'Jurassic Park', 126),
(3, 3, 20, 'Django Livre', 165),
(5, 19, 2, 'Halloween 2', 105),
(6, 14, 8, 'Os Sete Samurais', 207),
(7, 16, 15, 'Star Wars: Epis?dio IV - Uma Nova Esperan?a', 121),
(8, 16, 15, 'Star Wars: Epis?dio V - O Imp?rio Contra-Ataca', 124),
(9, 18, 20, 'Os Imperdo?veis', 131),
(10, 9, 20, 'Deus e o Diabo na Terra do Sol', 120),
(11, 12, 4, 'Bacurau', 131),
(12, 15, 4, 'O Dem?nio das Onze Horas', 115),
(13, 17, 15, 'Stalker', 163),
(14, 13, 6, 'Psicose', 109),
(15, 13, 6, 'Um Corpo Que Cai', 128),
(16, 11, 4, 'Bingo: O Rei das Manh?s', 113),
(18, 5, 15, 'Frankenweenie', 87),
(19, 4, 15, 'Oppenheimer', 180),
(20, 6, 2, 'O iluminado', 144);

-- --------------------------------------------------------

--
-- Estrutura da tabela `funcionario`
--

CREATE TABLE `funcionario` (
  `pk_cpf` varchar(11) NOT NULL,
  `fk_filial` int(11) DEFAULT NULL,
  `nome` varchar(64) DEFAULT NULL,
  `salario` double DEFAULT NULL,
  `endereco` varchar(128) DEFAULT NULL,
  `ativo` tinyint(1) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Extraindo dados da tabela `funcionario`
--

INSERT INTO `funcionario` (`pk_cpf`, `fk_filial`, `nome`, `salario`, `endereco`, `ativo`) VALUES
('09626624450', 12, 'Yuri Lucca Vieira', 2824, 'Rua da Lua', 1),
('23510365143', 5, 'Al?cia Eduarda Cavalcanti', 1412, 'Rua Vit?ria Alves da Silva', 1),
('32746961377', 7, 'Giovana Carolina Ramos', 2824, 'Rua Badar? Junior', 0),
('35331730388', 8, 'Elo? Patr?cia Clarice dos Santos', 2824, 'Residencial Torquato Neto III', 1),
('35592672420', 1, 'Carolina Betina Martins', 2824, 'Quadra Dezessete', 1),
('35616484016', 17, 'Amanda Silvana Cl?udia da Silva', 4236, 'Avenida Balcans', 1),
('47540354534', 2, 'F?bio Thiago Davi Porto', 1412, 'Rua Seu Z? Bezerra', 1),
('54662966787', 1, 'Breno Erick Guilherme Sales', 2824, 'Rua Rio Pacavi', 0),
('56402667595', 10, 'Lorena Stella Valentina Novaes', 1412, 'Rua Eneas Fran?a', 1),
('58670913410', 1, 'Camila Jennifer Valentina Silva', 2824, 'Rua Presidente Prudente', 1),
('59650383727', 11, 'Rafael Ricardo Ara?jo', 2824, 'Rua Corinthians', 0),
('71286800390', 4, 'Andr? Fernando Baptista', 2824, 'Rua CC-11', 1),
('73619463565', 8, 'Luiz Leandro de Paula', 1412, 'Rua Florestan Fernandes', 1),
('76933174069', 14, 'Diego Pietro Oliveira', 4236, 'Beco Eunice Fernandes Ribeiro', 1),
('78656761972', 13, 'Kau? Giovanni Rafael Rezende', 1412, 'Quadra QS 404 Conjunto C', 1),
('88850654650', 20, 'Theo Breno de Paula', 1412, 'Rua Florestan Fernandes', 0),
('92073469511', 19, 'Vicente Marcelo', 2824, 'Rua 11 de Setembro 2', 1),
('95454545988', 13, 'Regina Daiane Aparecida da Mata', 4236, 'Rua Vinte e Oito', 1),
('99553377025', 4, 'Hugo Enrico Gon?alves', 1412, 'Pra?a Breno Pinheiro Valadares', 1);

-- --------------------------------------------------------

--
-- Estrutura da tabela `genero`
--

CREATE TABLE `genero` (
  `pk_id` int(11) NOT NULL,
  `nome` varchar(32) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Extraindo dados da tabela `genero`
--

INSERT INTO `genero` (`pk_id`, `nome`) VALUES
(1, 'Romance'),
(2, 'Terror'),
(3, 'Com?dia'),
(4, 'Drama'),
(5, 'Aventura'),
(6, 'Suspense'),
(7, 'Com?dia Rom?ntica'),
(8, 'A??o'),
(9, 'Musical'),
(10, 'Document?rio'),
(11, 'Guerra'),
(12, 'Fantasia'),
(13, 'Filme Policial'),
(15, 'Sci-Fi'),
(16, 'Fic??o'),
(18, 'Com?dia Dram?tica'),
(19, 'Dan?a'),
(20, 'Faroeste');

-- --------------------------------------------------------

--
-- Estrutura da tabela `locadora`
--

CREATE TABLE `locadora` (
  `pk_id` int(11) NOT NULL,
  `endereco` varchar(128) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Extraindo dados da tabela `locadora`
--

INSERT INTO `locadora` (`pk_id`, `endereco`) VALUES
(1, 'Avenida Governador Jos? Malche, 2030'),
(2, 'Rua Quatro Cachoeiras, 142'),
(4, 'Pra?a Mil Oitocentos e Dezessete, 82'),
(5, 'Rua Jos? Rom?o, 1017'),
(6, 'Rua Leda, 1659'),
(7, 'Rua Isl?, 2'),
(8, 'Rua Governador Jorge Teixeira, 501'),
(10, 'Rua Annita Curti, 808'),
(11, 'Travessa Fama, 826'),
(12, 'Rua Rocha Le?o, 120'),
(13, 'Rua Jos? Bastos, 771'),
(14, 'Rua P, 2098'),
(15, 'Rua Hor?cio Neves, 159'),
(16, 'Rua Bela N?polis, 620'),
(17, 'Rua Dona Bitinha, 120'),
(18, 'Rua Osvaldo Paulo Gala, 69'),
(19, 'Rua Mariana Costa de Medeiros, 26'),
(20, 'Alameda Pl?cido de Castro, 700');

-- --------------------------------------------------------

--
-- Estrutura da tabela `pedido`
--

CREATE TABLE `pedido` (
  `pk_id` int(11) NOT NULL,
  `fk_cliente` varchar(11) DEFAULT NULL,
  `fk_funcionario` varchar(11) DEFAULT NULL,
  `fk_filme` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Extraindo dados da tabela `pedido`
--

INSERT INTO `pedido` (`pk_id`, `fk_cliente`, `fk_funcionario`, `fk_filme`) VALUES
(1, '18619443224', '47540354534', 6),
(2, '55292011610', '35592672420', 19),
(3, '76168972756', '54662966787', 11),
(4, '23365521593', '73619463565', 5),
(5, '32223191541', '35592672420', 5),
(6, '60320472701', '78656761972', 5),
(7, '58225575202', '99553377025', 6),
(8, '83596548837', '73619463565', 7),
(9, '17272200480', '99553377025', 8),
(10, '32223191541', '95454545988', 6),
(11, '18619443224', '56402667595', 11),
(12, '18619443224', '54662966787', 16),
(13, '55292011610', '95454545988', 20),
(14, '55292011610', '99553377025', 19),
(15, '17272200480', '35592672420', 18),
(16, '42492388735', '35592672420', 8),
(17, '60320472701', '35592672420', 20),
(18, '76168972756', '73619463565', 3),
(19, '08520170650', '95454545988', 2),
(20, '55292011610', '58670913410', 1);

--
-- Índices para tabelas despejadas
--

--
-- Índices para tabela `cliente`
--
ALTER TABLE `cliente`
  ADD PRIMARY KEY (`pk_cpf`);

--
-- Índices para tabela `diretor`
--
ALTER TABLE `diretor`
  ADD PRIMARY KEY (`pk_id`);

--
-- Índices para tabela `filme`
--
ALTER TABLE `filme`
  ADD PRIMARY KEY (`pk_id`),
  ADD KEY `fk_diretor` (`fk_diretor`),
  ADD KEY `fk_genero` (`fk_genero`);

--
-- Índices para tabela `funcionario`
--
ALTER TABLE `funcionario`
  ADD PRIMARY KEY (`pk_cpf`),
  ADD KEY `fk_filial` (`fk_filial`);

--
-- Índices para tabela `genero`
--
ALTER TABLE `genero`
  ADD PRIMARY KEY (`pk_id`);

--
-- Índices para tabela `locadora`
--
ALTER TABLE `locadora`
  ADD PRIMARY KEY (`pk_id`);

--
-- Índices para tabela `pedido`
--
ALTER TABLE `pedido`
  ADD PRIMARY KEY (`pk_id`),
  ADD KEY `fk_cliente` (`fk_cliente`),
  ADD KEY `fk_funcionario` (`fk_funcionario`),
  ADD KEY `fk_filme` (`fk_filme`);

--
-- AUTO_INCREMENT de tabelas despejadas
--

--
-- AUTO_INCREMENT de tabela `diretor`
--
ALTER TABLE `diretor`
  MODIFY `pk_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT de tabela `filme`
--
ALTER TABLE `filme`
  MODIFY `pk_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT de tabela `genero`
--
ALTER TABLE `genero`
  MODIFY `pk_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT de tabela `locadora`
--
ALTER TABLE `locadora`
  MODIFY `pk_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT de tabela `pedido`
--
ALTER TABLE `pedido`
  MODIFY `pk_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- Restrições para despejos de tabelas
--

--
-- Limitadores para a tabela `filme`
--
ALTER TABLE `filme`
  ADD CONSTRAINT `filme_ibfk_1` FOREIGN KEY (`fk_diretor`) REFERENCES `diretor` (`pk_id`),
  ADD CONSTRAINT `filme_ibfk_2` FOREIGN KEY (`fk_genero`) REFERENCES `genero` (`pk_id`);

--
-- Limitadores para a tabela `funcionario`
--
ALTER TABLE `funcionario`
  ADD CONSTRAINT `funcionario_ibfk_1` FOREIGN KEY (`fk_filial`) REFERENCES `locadora` (`pk_id`);

--
-- Limitadores para a tabela `pedido`
--
ALTER TABLE `pedido`
  ADD CONSTRAINT `pedido_ibfk_1` FOREIGN KEY (`fk_cliente`) REFERENCES `cliente` (`pk_cpf`),
  ADD CONSTRAINT `pedido_ibfk_2` FOREIGN KEY (`fk_funcionario`) REFERENCES `funcionario` (`pk_cpf`),
  ADD CONSTRAINT `pedido_ibfk_3` FOREIGN KEY (`fk_filme`) REFERENCES `filme` (`pk_id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
