-- phpMyAdmin SQL Dump
-- version 4.6.5.2
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Tempo de geração: 19/05/2017 às 21:49
-- Versão do servidor: 10.1.21-MariaDB
-- Versão do PHP: 7.1.1

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Banco de dados: `avaldesempenho`
--

-- --------------------------------------------------------

--
-- Estrutura para tabela `avaliacao`
--

CREATE TABLE `avaliacao` (
  `id` int(11) NOT NULL,
  `fk_aluno` int(11) NOT NULL,
  `dataAvaliacao` bigint(20) NOT NULL,
  `mediaTecnica` float NOT NULL,
  `mediaMotivacao` float NOT NULL,
  `mediaOrientacaoAprendizado` float NOT NULL,
  `mediaFocoCliente` float NOT NULL,
  `mediaCompromissoResultado` float NOT NULL,
  `mediaTrabalhoEquipe` float NOT NULL,
  `mediaFinal` float NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci ROW_FORMAT=COMPACT;

--
-- Fazendo dump de dados para tabela `avaliacao`
--

INSERT INTO `avaliacao` (`id`, `fk_aluno`, `dataAvaliacao`, `mediaTecnica`, `mediaMotivacao`, `mediaOrientacaoAprendizado`, `mediaFocoCliente`, `mediaCompromissoResultado`, `mediaTrabalhoEquipe`, `mediaFinal`) VALUES
(1, 3, 0, 0, 0, 0, 0, 0, 0, 0),
(2, 3, 0, 0, 0, 0, 0, 0, 0, 0);

-- --------------------------------------------------------

--
-- Estrutura para tabela `cargo`
--

CREATE TABLE `cargo` (
  `id` int(11) NOT NULL,
  `nome` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `fk_setor` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci ROW_FORMAT=COMPACT;

--
-- Fazendo dump de dados para tabela `cargo`
--

INSERT INTO `cargo` (`id`, `nome`, `fk_setor`) VALUES
(1, 'Designer Gráfico', 1),
(2, 'Programador', 1),
(3, 'Programador', 2),
(4, 'Vendedor', 2),
(5, 'Professor', 3),
(6, 'Técnico de Informática', 4),
(7, 'Contador', 6);

-- --------------------------------------------------------

--
-- Estrutura para tabela `estagiario`
--

CREATE TABLE `estagiario` (
  `id` int(11) NOT NULL,
  `nome` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `fk_cargo` int(11) NOT NULL,
  `fk_gestor` int(11) NOT NULL,
  `dataAdmissao` bigint(20) NOT NULL,
  `nivel` int(11) NOT NULL,
  `status` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Fazendo dump de dados para tabela `estagiario`
--

INSERT INTO `estagiario` (`id`, `nome`, `fk_cargo`, `fk_gestor`, `dataAdmissao`, `nivel`, `status`) VALUES
(1, 'Jose Carlos', 1, 1, 1444446000000, 1, 1),
(2, 'Felipe Costa', 5, 3, 1444446000000, 1, 1),
(3, 'Maria da Penha', 3, 2, 1444791600000, 2, 1),
(4, 'ciclano', 1, 1, 1444446000000, 1, 0),
(5, 'pedro', 2, 2, 1444446000000, 1, 0),
(6, 'falvio', 3, 2, 1444446000000, 1, 1),
(7, 'juliana', 1, 1, 1444446000000, 1, 1),
(8, 'Cida', 2, 1, 1444446000000, 1, 1),
(9, 'Barbara', 3, 1, 1444446000000, 1, 1),
(10, 'Amanda', 2, 2, 1444446000000, 1, 1),
(11, 'Felipe', 3, 1, 1444446000000, 1, 0),
(12, 'Victorium', 1, 1, 1444446000000, 1, 0),
(13, 'Jose Carlos 2', 1, 1, 1444446000000, 1, 1),
(14, 'Felipe Costa 2', 5, 3, 1444446000000, 1, 1),
(15, 'Maria da Penha 2', 3, 2, 1444791600000, 2, 1),
(16, 'Beltrano ciclano', 1, 1, 1444446000000, 1, 0),
(17, 'Carlos pedro', 2, 2, 1444446000000, 1, 0),
(18, 'Joao falvio', 3, 2, 1444446000000, 1, 1),
(19, 'Kelly juliana', 1, 1, 1444446000000, 1, 1),
(20, 'Maria Cida', 2, 1, 1444446000000, 1, 1),
(21, 'Amanda Barbara', 3, 1, 1444446000000, 1, 1),
(22, ' Pedro Amanda', 2, 2, 1444446000000, 1, 1),
(23, 'Nathalia Felipe', 3, 1, 1444446000000, 1, 0),
(24, 'Victorium Teste', 1, 1, 1444446000000, 1, 0),
(25, 'ayrtin dadddd', 3, 2, 1423706400000, 1, 1);

-- --------------------------------------------------------

--
-- Estrutura para tabela `gestor`
--

CREATE TABLE `gestor` (
  `id` int(11) NOT NULL,
  `nome` varchar(50) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `fk_setor` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Fazendo dump de dados para tabela `gestor`
--

INSERT INTO `gestor` (`id`, `nome`, `fk_setor`) VALUES
(1, 'Maria Aparecida', 1),
(2, 'Diego Erick Oliveira', 2),
(3, 'Vinicius Antonio Souza', 3),
(4, 'Heloisa Mariah Elisa Pereira', 4),
(5, 'Laís Camila Catarina Gomes', 5),
(6, 'Filipe Breno Matheus Dias', 6);

-- --------------------------------------------------------

--
-- Estrutura para tabela `indicadores`
--

CREATE TABLE `indicadores` (
  `id` int(11) NOT NULL,
  `cargo` varchar(50) NOT NULL,
  `indicadorTecnica` varchar(1000) NOT NULL,
  `descTecnica1` varchar(1000) NOT NULL,
  `descTecnica2` varchar(1000) NOT NULL,
  `descTecnica3` varchar(1000) NOT NULL,
  `descTecnica4` varchar(1000) NOT NULL,
  `pesoTecnica` int(11) NOT NULL,
  `indicadorMotivacao` varchar(1000) NOT NULL,
  `descMotivacao1` varchar(1000) NOT NULL,
  `descMotivacao2` varchar(1000) NOT NULL,
  `descMotivacao3` varchar(1000) NOT NULL,
  `descMotivacao4` varchar(1000) NOT NULL,
  `pesoMotivacao` int(11) NOT NULL,
  `indicadorOAprendizado` varchar(1000) NOT NULL,
  `descOAprendizado1` varchar(1000) NOT NULL,
  `descOAprendizado2` varchar(1000) NOT NULL,
  `descOAprendizado3` varchar(1000) NOT NULL,
  `descOAprendizado4` varchar(1000) NOT NULL,
  `pesoOAprendizado` int(11) NOT NULL,
  `indicadorFCliente` varchar(1000) NOT NULL,
  `descFCliente1` varchar(1000) NOT NULL,
  `descFCliente2` varchar(1000) NOT NULL,
  `descFCliente3` varchar(1000) NOT NULL,
  `descFCliente4` varchar(1000) NOT NULL,
  `pesoFCliente` int(11) NOT NULL,
  `indicadorCResultado` varchar(1000) NOT NULL,
  `descCResultado1` varchar(1000) NOT NULL,
  `descCResultado2` varchar(1000) NOT NULL,
  `descCResultado3` varchar(1000) NOT NULL,
  `descCResultado4` varchar(1000) NOT NULL,
  `pesoCResultado` int(11) NOT NULL,
  `indicadorTEquipe` varchar(1000) NOT NULL,
  `descTEquipe1` varchar(1000) NOT NULL,
  `descTEquipe2` varchar(1000) NOT NULL,
  `descTEquipe3` varchar(1000) NOT NULL,
  `descTEquipe4` varchar(1000) NOT NULL,
  `pesoTEquipe` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Fazendo dump de dados para tabela `indicadores`
--

INSERT INTO `indicadores` (`id`, `cargo`, `indicadorTecnica`, `descTecnica1`, `descTecnica2`, `descTecnica3`, `descTecnica4`, `pesoTecnica`, `indicadorMotivacao`, `descMotivacao1`, `descMotivacao2`, `descMotivacao3`, `descMotivacao4`, `pesoMotivacao`, `indicadorOAprendizado`, `descOAprendizado1`, `descOAprendizado2`, `descOAprendizado3`, `descOAprendizado4`, `pesoOAprendizado`, `indicadorFCliente`, `descFCliente1`, `descFCliente2`, `descFCliente3`, `descFCliente4`, `pesoFCliente`, `indicadorCResultado`, `descCResultado1`, `descCResultado2`, `descCResultado3`, `descCResultado4`, `pesoCResultado`, `indicadorTEquipe`, `descTEquipe1`, `descTEquipe2`, `descTEquipe3`, `descTEquipe4`, `pesoTEquipe`) VALUES
(1, 'Relacionamento', 'Capacidade de se manter atualizado com as informações necessárias ao bom desempenho de suas atividades.', 'Realiza suas atividades demonstrando conhecimento das soluções de comunicação digital oferecidas pela empres', 'Executa seu trabalho evidenciando conhecimento do  sistema corporativo.', 'Realiza atividades demonstrando conhecimento das rotinas e procedimentos relacionados às suas funções.', 'Busca manter-se atualizado através de matérias disponíveis na intranet e cursos oferecidos pela empresa.', 1, 'Capacidade de manter-se motivado e engajado com o negócio, superando dificuldades e apresentando soluções.', 'Demonstra motivação para executar suas tarefas diárias.', 'Não se acomoda com resultados obtidos, buscando sempre superá-los.', 'Evidencia atitude positiva para resolver problemas.', 'Suporta críticas construtivas, transformando-as em insumo para sua evolução profissional.', 1, 'Predisposição para oferecer produtos ou serviços antecipando as necessidades dos clientes.', 'Apresenta bom índice negociação de sites.', 'Apresenta bom índice de atendimento/mês.', 'Apresenta bom índice de finalização de atendimento mês.', 'Apresenta agilidade e qualidade no cadastramento de ofertas e ações de pós-venda do produto site.', 2, 'Orienta suas atitudes visando a valorização de relações positivas que favoreçam a fidelização do cliente.  ', 'Antecipa-se na busca de informações objetivando a fidelização do cliente.', 'Propõe soluções adequadas às necessidades do cliente.', 'Demonstra capacidade de estabelecer relações de confiança com os clientes.', 'Orienta os clientes compartilhando informações relevantes para seu negócio. ', 1, 'Capacidade de transmitir idéias e fatos de forma clara, objetiva e transparente, de maneira que sua abordagem favoreça o entendimento e a construção de bons relacionamentos.', 'Transmite ao cliente a informação completa e suficiente.', 'Transmite ao cliente suas idéias com clareza, segurança e credibilidade.', 'Demonstra capacidade de persuasão e negociação. ', 'Comunica-se por escrito de forma clara e acessível ao interlocutor.', 1, 'Traballha cooperativamente, integrando-se ao grupo em que atua visando o alcance dos objetivos propostos.', 'Compartilha informação com os colegas e coopera sempre que percebe alguma dificuldade na execução do trabalho.', 'Sua atuação é caracterizada pelo respeito nos relacionamentos em todos os âmbitos.', 'Atua como facilitador e motivador em seu ambiente de trabalho, estimulando atitudes positivas.', 'Busca relacionamento com outros colegas para compartilhar experiências e encontrar oportunidades de melhoria.', 1),
(2, 'Novos Negócios', 'Capacidade de se manter atualizado com as informações necessárias ao bom desempenho de suas atividades.', 'Realiza suas atividades demonstrando conhecimento das soluções de comunicação digital oferecidas pela empresa.', 'Executa seu trabalho evidenciando conhecimento dos aplicativos e sistemas utilizados por sua área.', 'Realiza atividades demonstrando conhecimento das rotinas e procedimentos relacionados às suas funções.', 'Possui entendimento do negócio, compreendendo o impacto de suas atividades para os resultados empresariais.', 4, 'Capacidade de manter-se motivado e engajado com o negócio, superando dificuldades e apresentando soluções.', 'Demonstra motivação para executar suas tarefas diárias.', 'Evidencia atitude positiva para resolver problemas.', 'Não desiste diante de situações adversas, persistindo na superação dos obstáculos.', 'Suporta críticas construtivas, transformando-as em insumo para sua evolução profissional.', 2, 'Orienta suas ações para o alcance dos objetivos.', 'Cumpre os prazos estabelecidos.', 'Apresenta qualidade em suas entregas.', 'Inova, buscando soluções mais eficientes para realizar suas tarefas.', 'Organiza e prioriza suas tarefas de forma a alcançar os resultados estabelecidos.', 4, 'Orienta suas atitudes visando a valorização de relações positivas que favoreçam a fidelização do cliente.  ', 'Antecipa-se na busca de informações objetivando a fidelização ou a aquisição de clientes e usuários.', 'Propõe soluções adequadas ao cumprimento do objetivo de conquista e fidelização de clientes e usuários. ', 'Sugere ações que tenham objetivo de melhorar a usabilidade ou a audiência dos produtos.', 'Acompanha os movimentos do mercado de buscas e analisa os possíveis impactos na divulgação dos nossos clientes.', 2, 'Capacidade de transmitir idéias e fatos de forma clara, objetiva e transparente, de maneira que sua abordagem favoreça o entendimento e a construção de bons relacionamentos.', 'Comunica-se com o gestor que há dúvida sobre uma atividade.', 'Transmite suas idéias com clareza, segurança e credibilidade.', 'Demonstra capacidade de persuasão e negociação. ', 'Comunica-se por escrito de forma clara e acessível ao interlocutor.', 4, 'Traballha cooperativamente, integrando-se ao grupo em que atua visando o alcance dos objetivos propostos.', 'Compartilha informação com os colegas e coopera sempre que percebe alguma dificuldade na execução do trabalho.', 'Sua atuação é caracterizada pelo respeito nos relacionamentos em todos os âmbitos.', 'Atua como facilitador e motivador em seu ambiente de trabalho, estimulando atitudes positivas.', 'Busca relacionamento com outros colegas para compartilhar experiências e encontrar oportunidades de melhoria.', 4),
(3, 'Recursos Humanos', 'Capacidade de se manter atualizado com as informações necessárias ao bom desempenho de suas atividades.', 'Realiza suas atividades demonstrando conhecimento das soluções de comunicação digital oferecidas pela empresa.', 'Executa seu trabalho evidenciando conhecimento das plataformas de EAD e seleção a distância.', 'Realiza atividades demonstrando conhecimento das rotinas e procedimentos relacionados às suas funções.', 'Busca manter-se atualizado através de matérias disponíveis na intranet e cursos oferecidos pela empresa.', 4, 'Capacidade de manter-se motivado e engajado com o negócio, superando dificuldades e apresentando soluções.', 'Demonstra motivação para executar suas tarefas diárias.', 'Evidencia atitude positiva para resolver problemas.', 'Não desiste diante de situações adversas, persistindo na superação dos obstáculos.', 'Suporta críticas construtivas, transformando-as em insumo para sua evolução profissional.', 2, 'Orienta suas ações para o alcance dos objetivos.', 'Cumpre os prazos estabelecidos.', 'Apresenta qualidade em suas entregas.', 'Inova, buscando soluções mais eficientes para realizar suas tarefas.', 'Organiza e prioriza suas tarefas de forma a alcançar os resultados estabelecidos.', 4, 'Orienta suas atitudes visando a valorização de relações positivas da empresa com todos os seus stakeholders.', 'Entra em contato com o gestor da área para alinhamento do perfil da vaga.', 'Atende as demandas de seleção demonstrando cordialidade em seus contatos por email e telefone.', 'Sugere ações que tenham objetivo de alcançar de maneira eficaz o perfil solicitado pelo requisitante da vaga.', 'Compartilha com o requisitante da vaga informações relevantes sobre o processo seletivo.', 4, 'Capacidade de transmitir idéias e fatos de forma clara, objetiva e transparente, de maneira que sua abordagem favoreça o entendimento e a construção de bons relacionamentos.', 'Comunica-se com o gestor sempre que há dúvida sobre uma atividade.', 'Expressa suas ideias com clareza e precisão, tanto verbalmente quanto por escrito.', 'Evidencia segurança ao falar em público. ', 'Comunica-se de maneira agradável e empática com candidatos, clientes internos, gestor e pares. ', 2, 'Trabalha cooperativamente, integrando-se ao grupo em que atua visando o alcance dos objetivos propostos.', 'Compartilha informação com os colegas e coopera sempre que percebe alguma dificuldade na execução do trabalho.', 'Sua atuação é caracterizada pelo respeito nos relacionamentos em todos os âmbitos.', 'Atua como facilitador e motivador em seu ambiente de trabalho, estimulando atitudes positivas.', 'Busca relacionamento com outros colegas para compartilhar experiências e encontrar oportunidades de melhoria.', 4),
(4, 'Designer EAD', 'Capacidade de se manter atualizado com as informações necessárias ao bom desempenho de suas atividades.', 'Realiza suas atividades demonstrando conhecimento das soluções de comunicação digital oferecidas pela empresa.', 'Executa seu trabalho evidenciando conhecimento em HTML e CSS.', 'Executa seu trabalho demonstrando conhecimento no Photoshop e outras ferramentas de edição.', 'Evidencia conhecimento de diferentes bancos de imagens. ', 4, 'Capacidade de manter-se motivado e  engajado com o negócio, superando dificuldades e apresentando soluções.', 'Demonstra motivação para executar suas tarefas diárias.', 'Evidencia atitude positiva para resolver problemas.', 'Não desiste diante de situações adversas, persistindo na superação dos obstáculos.', 'Suporta críticas construtivas, transformando-as em insumo para sua evolução profissional.', 2, 'Orienta suas ações para o alcance dos objetivos.', 'Cumpre os prazos estabelecidos.', 'Apresenta qualidade e agilidade em suas entregas.', 'Inova, buscando soluções mais eficientes para realizar suas tarefas.', 'Organiza e prioriza suas tarefas de forma a alcançar os resultados estabelecidos.', 4, 'Predisposição para estimular a criatividade no desenvolvimento das suas atividades.', 'Dedicação à pesquisa de novas ferramentas.', 'Procura inovar ou criar novos métodos na realização das atividades.', 'Capacidade de sugerir melhorias para os materiais desenvolvidos pela área (storyboards, banners, apresentações).', 'Capacidade de perceber, idealizar e propor novas alternativas para problemas.', 4, 'Capacidade de transmitir idéias e fatos de forma clara, objetiva e transparente, de maneira que sua abordagem favoreça o entendimento e a construção de bons relacionamentos.', 'Comunica-se com o gestor ou analista sempre que há dúvida sobre uma atividade.', 'Transmite suas idéias com clareza, segurança e credibilidade.', 'Demonstra capacidade de persuasão e negociação. ', 'Procura informar a equipe antecipadamente quando há inviabilidade no projeto. ', 2, 'Trabalha cooperativamente, integrando-se ao grupo em que atua visando o alcance dos objetivos propostos.', 'Compartilha informação com os colegas e coopera sempre que percebe alguma dificuldade na execução do trabalho.', 'Sua atuação é caracterizada pelo respeito nos relacionamentos em todos os âmbitos.', 'Atua como facilitador e motivador em seu ambiente de trabalho, estimulando atitudes positivas.', 'Busca relacionamento com outros colegas para compartilhar experiências e encontrar oportunidades de melhoria.', 4),
(5, 'Marketing', 'Capacidade de se manter atualizado com as informações necessárias ao bom desempenho de suas atividades.', 'Realiza suas atividades demonstrando conhecimento das soluções de comunicação digital oferecidas pela empresa.', 'Executa seu trabalho evidenciando domínio dos aplicativos e sistemas utilizados por sua área, agregando conhecimento acadêmico.', 'Realiza atividades demonstrando conhecimento das rotinas e procedimentos relacionadas às suas funções.', 'Busca manter-se atualizado através de matérias disponíveis na intranet e cursos oferecidos pela empresa.', 4, 'Capacidade de manter-se motivado e engajado com o negócio, superando dificuldades e apresentando soluções.', 'Demonstra motivação para executar suas tarefas diárias.', 'Evidencia atitude positiva para resolver problemas.', 'Não desiste diante de situações adversas, persistindo na superação dos obstáculos.', 'Suporta críticas construtivas, transformando-as em insumo para sua evolução profissional.', 2, 'Orienta suas ações para o alcance dos objetivos.', 'Cumpre os prazos estabelecidos.', 'Apresenta qualidade em suas entregas.', 'Inova, buscando soluções mais eficientes para realizar suas tarefas.', 'Organiza e prioriza suas tarefas de forma a alcançar os resultados estabelecidos.', 4, 'Orienta suas atitudes visando a valorização de relações positivas da empresa com todos os seus stakeholders.', 'Identifica oportunidades a partir da correta análise do mercado em que atua, apresentando sugestão de mídias inovadoras,  de parcerias estratégicas, presença em eventos, foco de trabalho em setor estratégico etc..', 'Apresenta capacidade de negociação com fornecedores e parceiros, observando ética e objetivos corporativos.', 'Monitora e avalia corretamente a atuação da concorrência, identificando possíveis oportunidades ou ameaças para a empresa.', 'Demonstra atenção ao público interno, identificando possíveis necessidades latentes (material de apoio, brindes, treinamento etc.).', 4, 'Capacidade de transmitir idéias e fatos de forma clara, objetiva e transparente, de maneira que sua abordagem favoreça o entendimento e a construção de bons relacionamentos.', 'Transmite suas idéias com clareza, segurança e credibilidade.', 'Comunica-se por escrito de forma clara e acessível ao interlocutor.', 'Interage com os gestores e colegas de trabalho de forma objetiva e concisa.', 'Utiliza-se de linguagem formal e informal de forma adequada às diversas situações.', 2, 'Traballha cooperativamente, integrando-se ao grupo em que atua visando o alcance dos objetivos propostos.', 'Compartilha informação com os colegas e coopera sempre que percebe alguma dificuldade na execução do trabalho.', 'Sua atuação é caracterizada pelo respeito nos relacionamentos em todos os âmbitos.', 'Atua como facilitador e motivador em seu ambiente de trabalho, estimulando atitudes positivas.', 'Busca relacionamento com outros colegas para compartilhar experiências e encontrar oportunidades de melhoria.', 4),
(6, 'Qualidade', 'Capacidade de se manter atualizado com as informações necessárias ao bom desempenho de suas atividades.', 'Realiza suas atividades demonstrando conhecimento das soluções de comunicação digital oferecidas pela empresa.', 'Executa seu trabalho evidenciando domínio do sistema corporativo.', 'Realiza atividades demonstrando conhecimento das rotinas e procedimentos relacionados às suas funções.', 'Busca manter-se atualizado através de matérias disponíveis na intranet e cursos oferecidos pela empresa.', 1, 'Capacidade de manter-se motivado e engajado com o negócio, superando dificuldades e apresentando soluções.', 'Demonstra motivação para executar suas tarefas diárias.', 'Evidencia atitude positiva para resolver problemas.', 'Não desiste diante de situações adversas, persistindo na superação dos obstáculos.', 'Suporta críticas construtivas, transformando-as em insumo para sua evolução profissional.', 1, 'Predisposição para oferecer produtos ou serviços antecipando as necessidades dos clientes.', 'Apresenta bom índice negociação de sites.', 'Apresenta bom índice de atendimento/mês.', 'Apresenta bom índice de finalização de atendimento mês.', 'Apresenta agilidade e qualidade no cadastramento de ofertas e ações de pós-venda do produto site.', 5, 'Orienta suas atitudes visando a valorização de relações positivas que favoreçam a fidelização do cliente.  ', 'Antecipa-se na busca de informações objetivando a fidelização do cliente.', 'Propõe soluções adequadas às necessidades do cliente.', 'Demonstra capacidade de estabelecer relações de confiança com os clientes.', 'Orienta os clientes compartilhando informações relevantes para seu negócio. ', 1, 'Capacidade de transmitir idéias e fatos de forma clara, objetiva e transparente, de maneira que sua abordagem favoreça o entendimento e a construção de bons relacionamentos.', 'Transmite ao cliente a informação completa e suficiente.', 'Transmite ao cliente suas idéias com clareza, segurança e credibilidade.', 'Demonstra capacidade de persuasão e negociação. ', 'Comunica-se por escrito de forma clara e acessível ao interlocutor.', 1, 'Traballha cooperativamente, integrando-se ao grupo em que atua visando o alcance dos objetivos propostos.', 'Compartilha informação com os colegas e coopera sempre que percebe alguma dificuldade na execução do trabalho.', 'Sua atuação é caracterizada pelo respeito nos relacionamentos em todos os âmbitos.', 'Atua como facilitador e motivador em seu ambiente de trabalho, estimulando atitudes positivas.', 'Busca relacionamento com outros colegas para compartilhar experiências e encontrar oportunidades de melhoria.', 1),
(7, 'SAC', 'Capacidade de se manter atualizado com as informações necessárias ao bom desempenho de suas atividades.', 'Desempenha suas funções demonstrando conhecimento das soluções de comunicação digital oferecidas pela empresa.', 'Executa seu trabalho evidenciando conhecimento do sistema corporativo.', 'Exerce suas funções evidenciando conhecimento das rotinas e procedimentos relacionados às suas funções.', 'Busca manter-se atualizado através de matérias disponíveis na intranet e cursos oferecidos pela empresa.', 1, 'Capacidade de manter-se motivado e engajado com o negócio, superando dificuldades e apresentando soluções.', 'Demonstra motivação para desempenhar suas tarefas diárias.', 'Não desiste diante de situações adversas, persistindo na superação de obstáculos.', 'Evidencia atitude positiva para resolver problemas.', 'Interage com a redes sociais da empresa (facebook, instagram, blog) evidenciando engajamento com o negócio.', 1, 'Orienta suas ações para o alcance dos objetivos.', 'Oferece ao cliente outras soluções de comunicação.', 'Incentiva o uso da área de cliente.', 'Registra as solicitações de atendimento.', 'Realiza marcações no atendimento: alteração de anúncio, inclusão de AG, orientação de navegação e outros.', 1, 'Constrói relacionamentos de colaboração com os clientes e responde satisfatoriamente às suas necessidades. ', 'Apresenta escuta empática sendo capaz de identificar às necessidades do cliente.', 'Propõe soluções adequadas às necessidades do cliente.', 'Orienta o cliente, compartilhando informações que possam esclarecer eventuais dúvidas.', 'Transmite credibilidade no atendimento, conseguindo estabelecer relação de confiança com o cliente.', 1, 'Capacidade de transmitir idéias e fatos de forma clara, objetiva e transparente, de maneira que sua abordagem favoreça o entendimento e a construção de bons relacionamentos.', 'Expressa ideias com clareza e objetividade, tanto verbalmente quanto por escrito.', 'Comunica-se de forma eficaz  com clientes internos/externos, gestor e pares.', 'Evidencia capacidade de persuasão e negociação na retenção do produto. ', 'Apresenta ausência de vícios de linguagem.', 1, 'Capacidade de desenvolver relações colaborativas que facilitem o atingimento dos objetivos da área.', 'Compartilha informação com os colegas e coopera sempre que percebe alguma dificuldade na execução do trabalho.', 'Sua atuação é caracterizada pelo respeito nos relacionamentos em todos os âmbitos.', 'Atua como facilitador e motivador em seu ambiente de trabalho, estimulando atitudes positivas.', 'Constrói relações de trabalho colaborativas, considerando as ideias e opiniões diferentes das suas.', 1);

-- --------------------------------------------------------

--
-- Estrutura para tabela `setor`
--

CREATE TABLE `setor` (
  `id` int(11) NOT NULL,
  `nome` varchar(50) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `fk_unidade` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Fazendo dump de dados para tabela `setor`
--

INSERT INTO `setor` (`id`, `nome`, `fk_unidade`) VALUES
(1, 'Talentos', 2),
(2, 'Vendas', 1),
(3, 'Recursos Humanos', 1),
(4, 'Talentos', 3),
(5, 'Financeiro', 3),
(6, 'Contábil', 2);

-- --------------------------------------------------------

--
-- Estrutura para tabela `unidade`
--

CREATE TABLE `unidade` (
  `id` int(11) NOT NULL,
  `nome` varchar(50) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci ROW_FORMAT=COMPACT;

--
-- Fazendo dump de dados para tabela `unidade`
--

INSERT INTO `unidade` (`id`, `nome`) VALUES
(1, 'Rio de Janeiro'),
(2, 'São Paulo'),
(3, 'Minas Gerais');

--
-- Índices de tabelas apagadas
--

--
-- Índices de tabela `avaliacao`
--
ALTER TABLE `avaliacao`
  ADD PRIMARY KEY (`id`);

--
-- Índices de tabela `cargo`
--
ALTER TABLE `cargo`
  ADD PRIMARY KEY (`id`);

--
-- Índices de tabela `estagiario`
--
ALTER TABLE `estagiario`
  ADD PRIMARY KEY (`id`);

--
-- Índices de tabela `gestor`
--
ALTER TABLE `gestor`
  ADD PRIMARY KEY (`id`);

--
-- Índices de tabela `indicadores`
--
ALTER TABLE `indicadores`
  ADD PRIMARY KEY (`id`);

--
-- Índices de tabela `setor`
--
ALTER TABLE `setor`
  ADD PRIMARY KEY (`id`);

--
-- Índices de tabela `unidade`
--
ALTER TABLE `unidade`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT de tabelas apagadas
--

--
-- AUTO_INCREMENT de tabela `avaliacao`
--
ALTER TABLE `avaliacao`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT de tabela `cargo`
--
ALTER TABLE `cargo`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;
--
-- AUTO_INCREMENT de tabela `estagiario`
--
ALTER TABLE `estagiario`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=26;
--
-- AUTO_INCREMENT de tabela `gestor`
--
ALTER TABLE `gestor`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;
--
-- AUTO_INCREMENT de tabela `indicadores`
--
ALTER TABLE `indicadores`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;
--
-- AUTO_INCREMENT de tabela `setor`
--
ALTER TABLE `setor`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;
--
-- AUTO_INCREMENT de tabela `unidade`
--
ALTER TABLE `unidade`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
