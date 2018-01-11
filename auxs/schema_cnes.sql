--
-- PostgreSQL database dump
--

-- Dumped from database version 9.6.6
-- Dumped by pg_dump version 9.6.6

SET statement_timeout = 0;
SET lock_timeout = 0;
SET idle_in_transaction_session_timeout = 0;
SET client_encoding = 'UTF8';
SET standard_conforming_strings = on;
SET check_function_bodies = false;
SET client_min_messages = warning;
SET row_security = off;

--
-- Name: plpgsql; Type: EXTENSION; Schema: -; Owner: 
--

CREATE EXTENSION IF NOT EXISTS plpgsql WITH SCHEMA pg_catalog;


--
-- Name: EXTENSION plpgsql; Type: COMMENT; Schema: -; Owner: 
--

COMMENT ON EXTENSION plpgsql IS 'PL/pgSQL procedural language';


SET search_path = public, pg_catalog;

SET default_tablespace = '';

SET default_with_oids = false;

--
-- Name: rl_estab_equipamento; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE rl_estab_equipamento (
    co_unidade character varying(31) NOT NULL,
    co_equipamento character(2) NOT NULL,
    co_tipo_equipamento character(1) NOT NULL,
    qt_existente numeric(3,0),
    qt_uso numeric(3,0),
    tp_sus character(1),
    dt_atualizacao date NOT NULL,
    co_usuario character varying(12) NOT NULL,
    dt_atualizacao_origem date,
    dt_cmtp_inicio date,
    dt_cmtp_fim date,
    nu_seq_processo numeric(8,0)
);


ALTER TABLE rl_estab_equipamento OWNER TO postgres;

--
-- Name: TABLE rl_estab_equipamento; Type: COMMENT; Schema: public; Owner: postgres
--

COMMENT ON TABLE rl_estab_equipamento IS 'EQUIPAMENTOS';


--
-- Name: COLUMN rl_estab_equipamento.co_unidade; Type: COMMENT; Schema: public; Owner: postgres
--

COMMENT ON COLUMN rl_estab_equipamento.co_unidade IS 'Código do Estabelecimento de Saúde';


--
-- Name: COLUMN rl_estab_equipamento.co_equipamento; Type: COMMENT; Schema: public; Owner: postgres
--

COMMENT ON COLUMN rl_estab_equipamento.co_equipamento IS 'Código do Equipamento';


--
-- Name: COLUMN rl_estab_equipamento.co_tipo_equipamento; Type: COMMENT; Schema: public; Owner: postgres
--

COMMENT ON COLUMN rl_estab_equipamento.co_tipo_equipamento IS 'Código do Tipo de Equipamento';


--
-- Name: COLUMN rl_estab_equipamento.qt_existente; Type: COMMENT; Schema: public; Owner: postgres
--

COMMENT ON COLUMN rl_estab_equipamento.qt_existente IS 'Quantidade de Equipamentos Existentes';


--
-- Name: COLUMN rl_estab_equipamento.qt_uso; Type: COMMENT; Schema: public; Owner: postgres
--

COMMENT ON COLUMN rl_estab_equipamento.qt_uso IS 'Quantidade de Equipamentos em Uso';


--
-- Name: COLUMN rl_estab_equipamento.tp_sus; Type: COMMENT; Schema: public; Owner: postgres
--

COMMENT ON COLUMN rl_estab_equipamento.tp_sus IS 'Indica se o Equipamento está disponível para o SUS.
1 - Sim
2 - Não';


--
-- Name: COLUMN rl_estab_equipamento.dt_atualizacao; Type: COMMENT; Schema: public; Owner: postgres
--

COMMENT ON COLUMN rl_estab_equipamento.dt_atualizacao IS 'Data da Última Atualização do Registro';


--
-- Name: COLUMN rl_estab_equipamento.co_usuario; Type: COMMENT; Schema: public; Owner: postgres
--

COMMENT ON COLUMN rl_estab_equipamento.co_usuario IS 'Último Usuário que atualizou o Registro';


--
-- Name: COLUMN rl_estab_equipamento.dt_atualizacao_origem; Type: COMMENT; Schema: public; Owner: postgres
--

COMMENT ON COLUMN rl_estab_equipamento.dt_atualizacao_origem IS 'Data da Primeira entrada no Banco de Produção Federal';


--
-- Name: COLUMN rl_estab_equipamento.dt_cmtp_inicio; Type: COMMENT; Schema: public; Owner: postgres
--

COMMENT ON COLUMN rl_estab_equipamento.dt_cmtp_inicio IS 'Data da Primeira entrada ou Data do Retorno no Banco de Produção Federal';


--
-- Name: COLUMN rl_estab_equipamento.dt_cmtp_fim; Type: COMMENT; Schema: public; Owner: postgres
--

COMMENT ON COLUMN rl_estab_equipamento.dt_cmtp_fim IS 'Data Final de Competência';


--
-- Name: COLUMN rl_estab_equipamento.nu_seq_processo; Type: COMMENT; Schema: public; Owner: postgres
--

COMMENT ON COLUMN rl_estab_equipamento.nu_seq_processo IS 'Número do Processo da Última Carga';


--
-- Name: rl_estab_prog_fundo; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE rl_estab_prog_fundo (
    co_unidade character varying(31) NOT NULL,
    co_atividade character(2) NOT NULL,
    tp_estadual_municipal character(1) NOT NULL,
    dt_atualizacao date,
    co_usuario character varying(12) NOT NULL,
    dt_atualizacao_origem date,
    dt_cmtp_inicio date,
    dt_cmtp_fim date,
    nu_seq_processo numeric(8,0)
);


ALTER TABLE rl_estab_prog_fundo OWNER TO postgres;

--
-- Name: TABLE rl_estab_prog_fundo; Type: COMMENT; Schema: public; Owner: postgres
--

COMMENT ON TABLE rl_estab_prog_fundo IS 'GESTÃO DE ATIVIDADES / NÍVEL DE ATENÇÃO';


--
-- Name: COLUMN rl_estab_prog_fundo.co_unidade; Type: COMMENT; Schema: public; Owner: postgres
--

COMMENT ON COLUMN rl_estab_prog_fundo.co_unidade IS 'Código do Estabelecimento de Saúde';


--
-- Name: COLUMN rl_estab_prog_fundo.co_atividade; Type: COMMENT; Schema: public; Owner: postgres
--

COMMENT ON COLUMN rl_estab_prog_fundo.co_atividade IS 'Código da Atividade / Nível de Atenção';


--
-- Name: COLUMN rl_estab_prog_fundo.dt_atualizacao; Type: COMMENT; Schema: public; Owner: postgres
--

COMMENT ON COLUMN rl_estab_prog_fundo.dt_atualizacao IS 'Data da Última Atualização do Registro';


--
-- Name: COLUMN rl_estab_prog_fundo.co_usuario; Type: COMMENT; Schema: public; Owner: postgres
--

COMMENT ON COLUMN rl_estab_prog_fundo.co_usuario IS 'Último Usuário que atualizou o Registro';


--
-- Name: COLUMN rl_estab_prog_fundo.dt_atualizacao_origem; Type: COMMENT; Schema: public; Owner: postgres
--

COMMENT ON COLUMN rl_estab_prog_fundo.dt_atualizacao_origem IS 'Data da Primeira Entrada no Banco de Produção Federal';


--
-- Name: COLUMN rl_estab_prog_fundo.dt_cmtp_inicio; Type: COMMENT; Schema: public; Owner: postgres
--

COMMENT ON COLUMN rl_estab_prog_fundo.dt_cmtp_inicio IS 'Data da Primeira entrada ou Data do Retorno no Banco de Produção Federal';


--
-- Name: COLUMN rl_estab_prog_fundo.dt_cmtp_fim; Type: COMMENT; Schema: public; Owner: postgres
--

COMMENT ON COLUMN rl_estab_prog_fundo.dt_cmtp_fim IS 'Data Final de Competência';


--
-- Name: COLUMN rl_estab_prog_fundo.nu_seq_processo; Type: COMMENT; Schema: public; Owner: postgres
--

COMMENT ON COLUMN rl_estab_prog_fundo.nu_seq_processo IS 'Número do Processo da Última Carga';


--
-- Name: tb_atividade_ensino; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE tb_atividade_ensino (
    co_atividade character varying(2) NOT NULL,
    ds_atividade character varying(60) NOT NULL,
    dt_atualizacao_origem date
);


ALTER TABLE tb_atividade_ensino OWNER TO postgres;

--
-- Name: TABLE tb_atividade_ensino; Type: COMMENT; Schema: public; Owner: postgres
--

COMMENT ON TABLE tb_atividade_ensino IS 'ATIVIDADE DE ENSINO';


--
-- Name: COLUMN tb_atividade_ensino.co_atividade; Type: COMMENT; Schema: public; Owner: postgres
--

COMMENT ON COLUMN tb_atividade_ensino.co_atividade IS 'Código da Atividade de Ensino';


--
-- Name: COLUMN tb_atividade_ensino.ds_atividade; Type: COMMENT; Schema: public; Owner: postgres
--

COMMENT ON COLUMN tb_atividade_ensino.ds_atividade IS 'Descrição da atividade de ensino';


--
-- Name: COLUMN tb_atividade_ensino.dt_atualizacao_origem; Type: COMMENT; Schema: public; Owner: postgres
--

COMMENT ON COLUMN tb_atividade_ensino.dt_atualizacao_origem IS 'Sem uso';


--
-- Name: tb_atividade_profissional; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE tb_atividade_profissional (
    co_cbo character varying(6) NOT NULL,
    ds_atividade_profissional character varying(150) NOT NULL,
    tp_classificacao_profissional character(1),
    tp_cbo_saude character(1),
    st_cbo_regulamentado character(1),
    no_ano_cmpt character varying(4),
    dt_atualizacao_origem date
);


ALTER TABLE tb_atividade_profissional OWNER TO postgres;

--
-- Name: TABLE tb_atividade_profissional; Type: COMMENT; Schema: public; Owner: postgres
--

COMMENT ON TABLE tb_atividade_profissional IS 'CBO';


--
-- Name: COLUMN tb_atividade_profissional.co_cbo; Type: COMMENT; Schema: public; Owner: postgres
--

COMMENT ON COLUMN tb_atividade_profissional.co_cbo IS 'Código Brasileiro de Ocupação';


--
-- Name: COLUMN tb_atividade_profissional.ds_atividade_profissional; Type: COMMENT; Schema: public; Owner: postgres
--

COMMENT ON COLUMN tb_atividade_profissional.ds_atividade_profissional IS 'Descrição da Ocupação';


--
-- Name: COLUMN tb_atividade_profissional.tp_classificacao_profissional; Type: COMMENT; Schema: public; Owner: postgres
--

COMMENT ON COLUMN tb_atividade_profissional.tp_classificacao_profissional IS 'Indica o Nível de Escolaridade exigida';


--
-- Name: COLUMN tb_atividade_profissional.tp_cbo_saude; Type: COMMENT; Schema: public; Owner: postgres
--

COMMENT ON COLUMN tb_atividade_profissional.tp_cbo_saude IS 'Indica se o CBO é de saúde
S - SIM
N - NÃO';


--
-- Name: COLUMN tb_atividade_profissional.st_cbo_regulamentado; Type: COMMENT; Schema: public; Owner: postgres
--

COMMENT ON COLUMN tb_atividade_profissional.st_cbo_regulamentado IS 'Indica se o CBO é regulamentado
S - Sim
N - Não';


--
-- Name: COLUMN tb_atividade_profissional.no_ano_cmpt; Type: COMMENT; Schema: public; Owner: postgres
--

COMMENT ON COLUMN tb_atividade_profissional.no_ano_cmpt IS 'Ano competência';


--
-- Name: COLUMN tb_atividade_profissional.dt_atualizacao_origem; Type: COMMENT; Schema: public; Owner: postgres
--

COMMENT ON COLUMN tb_atividade_profissional.dt_atualizacao_origem IS 'Sem Uso';


--
-- Name: tb_carga_horaria_sus; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE tb_carga_horaria_sus (
    co_unidade character varying(31) NOT NULL,
    co_profissional_sus character varying(16) NOT NULL,
    co_cbo character varying(6) NOT NULL,
    tp_sus_nao_sus character(1) NOT NULL,
    ind_vinculacao character varying(6) NOT NULL,
    tp_terceiro_sih character(1),
    qt_carga_horaria_ambulatorial numeric(3,0),
    qt_carga_hor_hosp_sus character varying(255),
    qt_carga_horaria_outros character varying(255),
    co_conselho_classe character(2),
    nu_registro character varying(13),
    sg_uf_crm character varying(2),
    tp_preceptor character(1) NOT NULL,
    tp_residente character(1) NOT NULL,
    nu_cnpj_det_vinc character varying(14),
    dt_atualizacao date NOT NULL,
    co_usuario character varying(12) NOT NULL,
    dt_atualizacao_origem date,
    dt_cmtp_inicio date,
    dt_cmtp_fim date,
    nu_seq_processo numeric(8,0)
);


ALTER TABLE tb_carga_horaria_sus OWNER TO postgres;

--
-- Name: TABLE tb_carga_horaria_sus; Type: COMMENT; Schema: public; Owner: postgres
--

COMMENT ON TABLE tb_carga_horaria_sus IS 'VÍNCULOS DO PROFISSIONAL NO ESTABELECIMENTO';


--
-- Name: COLUMN tb_carga_horaria_sus.co_unidade; Type: COMMENT; Schema: public; Owner: postgres
--

COMMENT ON COLUMN tb_carga_horaria_sus.co_unidade IS 'Código do Estabelecimento de Saúde';


--
-- Name: COLUMN tb_carga_horaria_sus.co_profissional_sus; Type: COMMENT; Schema: public; Owner: postgres
--

COMMENT ON COLUMN tb_carga_horaria_sus.co_profissional_sus IS 'Código do Profissional de Saúde';


--
-- Name: COLUMN tb_carga_horaria_sus.co_cbo; Type: COMMENT; Schema: public; Owner: postgres
--

COMMENT ON COLUMN tb_carga_horaria_sus.co_cbo IS 'Código Brasileiro de Ocupação';


--
-- Name: COLUMN tb_carga_horaria_sus.tp_sus_nao_sus; Type: COMMENT; Schema: public; Owner: postgres
--

COMMENT ON COLUMN tb_carga_horaria_sus.tp_sus_nao_sus IS 'Indica se o Profissional faz Atendimento ao SUS
S - Sim
N - Não';


--
-- Name: COLUMN tb_carga_horaria_sus.ind_vinculacao; Type: COMMENT; Schema: public; Owner: postgres
--

COMMENT ON COLUMN tb_carga_horaria_sus.ind_vinculacao IS 'Indica a vinculação, o tipo e o sub tipo de vínculo do Profissional com o Estabelecimento de Saúde';


--
-- Name: COLUMN tb_carga_horaria_sus.tp_terceiro_sih; Type: COMMENT; Schema: public; Owner: postgres
--

COMMENT ON COLUMN tb_carga_horaria_sus.tp_terceiro_sih IS 'Sem uso';


--
-- Name: COLUMN tb_carga_horaria_sus.qt_carga_horaria_ambulatorial; Type: COMMENT; Schema: public; Owner: postgres
--

COMMENT ON COLUMN tb_carga_horaria_sus.qt_carga_horaria_ambulatorial IS 'Quantidade de Carga Horária Ambulatorial';


--
-- Name: COLUMN tb_carga_horaria_sus.qt_carga_hor_hosp_sus; Type: COMMENT; Schema: public; Owner: postgres
--

COMMENT ON COLUMN tb_carga_horaria_sus.qt_carga_hor_hosp_sus IS 'Quantidade de Carga Horária Hospitalar';


--
-- Name: COLUMN tb_carga_horaria_sus.qt_carga_horaria_outros; Type: COMMENT; Schema: public; Owner: postgres
--

COMMENT ON COLUMN tb_carga_horaria_sus.qt_carga_horaria_outros IS 'Quantidade de Carga Horária Outros';


--
-- Name: COLUMN tb_carga_horaria_sus.co_conselho_classe; Type: COMMENT; Schema: public; Owner: postgres
--

COMMENT ON COLUMN tb_carga_horaria_sus.co_conselho_classe IS 'Código do Orgão Emissor';


--
-- Name: COLUMN tb_carga_horaria_sus.nu_registro; Type: COMMENT; Schema: public; Owner: postgres
--

COMMENT ON COLUMN tb_carga_horaria_sus.nu_registro IS 'Número do Registro no Conselho de Classe';


--
-- Name: COLUMN tb_carga_horaria_sus.sg_uf_crm; Type: COMMENT; Schema: public; Owner: postgres
--

COMMENT ON COLUMN tb_carga_horaria_sus.sg_uf_crm IS 'UF do CRM';


--
-- Name: COLUMN tb_carga_horaria_sus.tp_preceptor; Type: COMMENT; Schema: public; Owner: postgres
--

COMMENT ON COLUMN tb_carga_horaria_sus.tp_preceptor IS 'Indica se o Profissional é Preceptor na Equipe
1 = Sim
2 = Não';


--
-- Name: COLUMN tb_carga_horaria_sus.tp_residente; Type: COMMENT; Schema: public; Owner: postgres
--

COMMENT ON COLUMN tb_carga_horaria_sus.tp_residente IS 'Indica se o Profissional é Residente na Equipe
1 = Sim
2 = Não';


--
-- Name: COLUMN tb_carga_horaria_sus.nu_cnpj_det_vinc; Type: COMMENT; Schema: public; Owner: postgres
--

COMMENT ON COLUMN tb_carga_horaria_sus.nu_cnpj_det_vinc IS 'Número do CNPJ do Empregador';


--
-- Name: COLUMN tb_carga_horaria_sus.dt_atualizacao; Type: COMMENT; Schema: public; Owner: postgres
--

COMMENT ON COLUMN tb_carga_horaria_sus.dt_atualizacao IS 'Data da Última Atualização do Registro';


--
-- Name: COLUMN tb_carga_horaria_sus.co_usuario; Type: COMMENT; Schema: public; Owner: postgres
--

COMMENT ON COLUMN tb_carga_horaria_sus.co_usuario IS 'Último Usuário que atualizou o Registro';


--
-- Name: COLUMN tb_carga_horaria_sus.dt_atualizacao_origem; Type: COMMENT; Schema: public; Owner: postgres
--

COMMENT ON COLUMN tb_carga_horaria_sus.dt_atualizacao_origem IS 'Data da Primeira entrada no Banco de Produção Federal';


--
-- Name: COLUMN tb_carga_horaria_sus.dt_cmtp_inicio; Type: COMMENT; Schema: public; Owner: postgres
--

COMMENT ON COLUMN tb_carga_horaria_sus.dt_cmtp_inicio IS 'Data da Primeira entrada ou Data do Retorno no Banco de Produção Federal';


--
-- Name: COLUMN tb_carga_horaria_sus.dt_cmtp_fim; Type: COMMENT; Schema: public; Owner: postgres
--

COMMENT ON COLUMN tb_carga_horaria_sus.dt_cmtp_fim IS 'Data Final de Competência';


--
-- Name: COLUMN tb_carga_horaria_sus.nu_seq_processo; Type: COMMENT; Schema: public; Owner: postgres
--

COMMENT ON COLUMN tb_carga_horaria_sus.nu_seq_processo IS 'Número do Processo da Última Carga';


--
-- Name: tb_dados_profissional_sus; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE tb_dados_profissional_sus (
    co_profissional_sus character varying(16) NOT NULL,
    co_cpf character varying(11) NOT NULL,
    no_profissional character varying(60) NOT NULL,
    co_cns character varying(15),
    dt_atualizacao date NOT NULL,
    co_usuario character varying(12) NOT NULL,
    st_nmprof_cadsus character(1),
    co_nacionalidade character varying(3),
    co_seq_inclusao numeric(8,0),
    "DT_ATUALIZACAO_ORI GEM" date,
    dt_cmtp_inicio character varying(255),
    dt_cmtp_fim character varying(255),
    nu_seq_processo numeric(8,0)
);


ALTER TABLE tb_dados_profissional_sus OWNER TO postgres;

--
-- Name: TABLE tb_dados_profissional_sus; Type: COMMENT; Schema: public; Owner: postgres
--

COMMENT ON TABLE tb_dados_profissional_sus IS 'PROFISSIONAIS';


--
-- Name: COLUMN tb_dados_profissional_sus.co_profissional_sus; Type: COMMENT; Schema: public; Owner: postgres
--

COMMENT ON COLUMN tb_dados_profissional_sus.co_profissional_sus IS 'Código do Profissional de Saúde';


--
-- Name: COLUMN tb_dados_profissional_sus.co_cpf; Type: COMMENT; Schema: public; Owner: postgres
--

COMMENT ON COLUMN tb_dados_profissional_sus.co_cpf IS 'CPF do Profissional';


--
-- Name: COLUMN tb_dados_profissional_sus.no_profissional; Type: COMMENT; Schema: public; Owner: postgres
--

COMMENT ON COLUMN tb_dados_profissional_sus.no_profissional IS 'Nome do Profissional';


--
-- Name: COLUMN tb_dados_profissional_sus.co_cns; Type: COMMENT; Schema: public; Owner: postgres
--

COMMENT ON COLUMN tb_dados_profissional_sus.co_cns IS 'Código do Cartão Nacional de Saúde';


--
-- Name: COLUMN tb_dados_profissional_sus.dt_atualizacao; Type: COMMENT; Schema: public; Owner: postgres
--

COMMENT ON COLUMN tb_dados_profissional_sus.dt_atualizacao IS 'Data da Última atualização do registro';


--
-- Name: COLUMN tb_dados_profissional_sus.co_usuario; Type: COMMENT; Schema: public; Owner: postgres
--

COMMENT ON COLUMN tb_dados_profissional_sus.co_usuario IS 'Último Usuário que atualizou o Registro';


--
-- Name: COLUMN tb_dados_profissional_sus.st_nmprof_cadsus; Type: COMMENT; Schema: public; Owner: postgres
--

COMMENT ON COLUMN tb_dados_profissional_sus.st_nmprof_cadsus IS 'Indica se o Nome do Profissional veio do CadWeb
S - Sim
N - Não';


--
-- Name: COLUMN tb_dados_profissional_sus.co_nacionalidade; Type: COMMENT; Schema: public; Owner: postgres
--

COMMENT ON COLUMN tb_dados_profissional_sus.co_nacionalidade IS 'Código de Nacionalidade';


--
-- Name: COLUMN tb_dados_profissional_sus.co_seq_inclusao; Type: COMMENT; Schema: public; Owner: postgres
--

COMMENT ON COLUMN tb_dados_profissional_sus.co_seq_inclusao IS 'Código Sequencial de Inclusão';


--
-- Name: COLUMN tb_dados_profissional_sus."DT_ATUALIZACAO_ORI GEM"; Type: COMMENT; Schema: public; Owner: postgres
--

COMMENT ON COLUMN tb_dados_profissional_sus."DT_ATUALIZACAO_ORI GEM" IS 'Data da Primeira entrada no Banco de Produção Federal';


--
-- Name: COLUMN tb_dados_profissional_sus.dt_cmtp_inicio; Type: COMMENT; Schema: public; Owner: postgres
--

COMMENT ON COLUMN tb_dados_profissional_sus.dt_cmtp_inicio IS 'Data da Primeira entrada ou Data do Retorno no Banco de Produção Federal';


--
-- Name: COLUMN tb_dados_profissional_sus.dt_cmtp_fim; Type: COMMENT; Schema: public; Owner: postgres
--

COMMENT ON COLUMN tb_dados_profissional_sus.dt_cmtp_fim IS 'Data Final de Competência';


--
-- Name: COLUMN tb_dados_profissional_sus.nu_seq_processo; Type: COMMENT; Schema: public; Owner: postgres
--

COMMENT ON COLUMN tb_dados_profissional_sus.nu_seq_processo IS 'Número do Processo da Última Carga';


--
-- Name: tb_equipamento; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE tb_equipamento (
    co_equipamento character varying(2) NOT NULL,
    co_tipo_equipamento character varying(1) NOT NULL,
    ds_equipamento character varying(60) NOT NULL,
    dt_atualizacao_origem date
);


ALTER TABLE tb_equipamento OWNER TO postgres;

--
-- Name: TABLE tb_equipamento; Type: COMMENT; Schema: public; Owner: postgres
--

COMMENT ON TABLE tb_equipamento IS 'EQUIPAMENTOS';


--
-- Name: COLUMN tb_equipamento.co_equipamento; Type: COMMENT; Schema: public; Owner: postgres
--

COMMENT ON COLUMN tb_equipamento.co_equipamento IS 'Código do Equipamento';


--
-- Name: COLUMN tb_equipamento.co_tipo_equipamento; Type: COMMENT; Schema: public; Owner: postgres
--

COMMENT ON COLUMN tb_equipamento.co_tipo_equipamento IS 'Código do Tipo de Equipamento
';


--
-- Name: COLUMN tb_equipamento.ds_equipamento; Type: COMMENT; Schema: public; Owner: postgres
--

COMMENT ON COLUMN tb_equipamento.ds_equipamento IS 'Descrição do Equipamento';


--
-- Name: COLUMN tb_equipamento.dt_atualizacao_origem; Type: COMMENT; Schema: public; Owner: postgres
--

COMMENT ON COLUMN tb_equipamento.dt_atualizacao_origem IS 'Sem Uso';


--
-- Name: tb_estabelecimento; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE tb_estabelecimento (
    co_unidade character varying(31) NOT NULL,
    co_cnes character varying(7),
    nu_cnpj_mantenedora character varying(14),
    tp_pfpj character(1),
    nivel_dep character(1),
    no_razao_social character varying(60) NOT NULL,
    no_fantasia character varying(60) NOT NULL,
    no_logradouro character varying(60) NOT NULL,
    nu_endereco character varying(10),
    no_complemento character varying(20),
    no_bairro character varying(40) NOT NULL,
    co_cep character varying(8) NOT NULL,
    co_regiao_saude character varying(4),
    co_micro_regiao character varying(6),
    co_distrito_sanitario character varying(4),
    co_distrito_administrativo character varying(4),
    nu_telefone character varying(13),
    nu_fax character varying(13),
    no_email character varying(30),
    nu_cpf character varying(11),
    nu_cnpj character varying(14),
    co_atividade character(2),
    co_clientela character(2),
    nu_alvara character varying(25),
    dt_expedicao date,
    tp_orgao_expedidor character(2),
    dt_val_lic date,
    tp_lic_sani character varying(1),
    tp_unidade character(2),
    co_turno_atendimento character(2),
    co_estado_gestor character(2),
    co_municipio_gestor character varying(7) NOT NULL,
    dt_atualizacao date NOT NULL,
    co_usuario character varying(12) NOT NULL,
    co_cpfdiretorcln character varying(11),
    reg_direto character varying(60),
    st_adesao_filantrop character(1),
    co_motivo_desab character varying(2),
    no_url character varying(60),
    nu_latitude character varying(30),
    nu_longitude character varying(30),
    dt_atu_geo date,
    no_usuario_geo character varying(60),
    co_natureza_jur character varying(4),
    tp_estab_sempre_aberto character(1),
    st_geracredito_gerente_sgif character varying(1),
    st_conexaointernet character varying(1),
    co_tipo_unidade character(2),
    no_fantasia_abrev character varying(21),
    tp_gestao character(1),
    dt_atualizacao_origem date,
    dt_cmtp_inicio date,
    dt_cmtp_fim date,
    nu_seq_processo numeric(8,0)
);


ALTER TABLE tb_estabelecimento OWNER TO postgres;

--
-- Name: TABLE tb_estabelecimento; Type: COMMENT; Schema: public; Owner: postgres
--

COMMENT ON TABLE tb_estabelecimento IS 'ESTABELECIMENTOS DE SAÚDE';


--
-- Name: COLUMN tb_estabelecimento.co_unidade; Type: COMMENT; Schema: public; Owner: postgres
--

COMMENT ON COLUMN tb_estabelecimento.co_unidade IS 'Código do Estabelecimento de Saúde';


--
-- Name: COLUMN tb_estabelecimento.co_cnes; Type: COMMENT; Schema: public; Owner: postgres
--

COMMENT ON COLUMN tb_estabelecimento.co_cnes IS 'Código Nacional do Estabelecimento de Saúde';


--
-- Name: COLUMN tb_estabelecimento.nu_cnpj_mantenedora; Type: COMMENT; Schema: public; Owner: postgres
--

COMMENT ON COLUMN tb_estabelecimento.nu_cnpj_mantenedora IS 'CNPJ da Mantenedora';


--
-- Name: COLUMN tb_estabelecimento.tp_pfpj; Type: COMMENT; Schema: public; Owner: postgres
--

COMMENT ON COLUMN tb_estabelecimento.tp_pfpj IS 'Indica se é Pessoa Física ou Jurídica
1 - Pessoa Fìsica
3 - Pessoa Jurídica';


--
-- Name: COLUMN tb_estabelecimento.nivel_dep; Type: COMMENT; Schema: public; Owner: postgres
--

COMMENT ON COLUMN tb_estabelecimento.nivel_dep IS 'Identificador da Situação do Estabelecimento
1 - Individual
3 - Mantido';


--
-- Name: COLUMN tb_estabelecimento.no_razao_social; Type: COMMENT; Schema: public; Owner: postgres
--

COMMENT ON COLUMN tb_estabelecimento.no_razao_social IS 'Razão Social';


--
-- Name: COLUMN tb_estabelecimento.no_fantasia; Type: COMMENT; Schema: public; Owner: postgres
--

COMMENT ON COLUMN tb_estabelecimento.no_fantasia IS 'Nome Fantasia';


--
-- Name: COLUMN tb_estabelecimento.no_logradouro; Type: COMMENT; Schema: public; Owner: postgres
--

COMMENT ON COLUMN tb_estabelecimento.no_logradouro IS 'Logradouro';


--
-- Name: COLUMN tb_estabelecimento.nu_endereco; Type: COMMENT; Schema: public; Owner: postgres
--

COMMENT ON COLUMN tb_estabelecimento.nu_endereco IS 'Número';


--
-- Name: COLUMN tb_estabelecimento.no_complemento; Type: COMMENT; Schema: public; Owner: postgres
--

COMMENT ON COLUMN tb_estabelecimento.no_complemento IS 'Complemento';


--
-- Name: COLUMN tb_estabelecimento.no_bairro; Type: COMMENT; Schema: public; Owner: postgres
--

COMMENT ON COLUMN tb_estabelecimento.no_bairro IS 'Bairro';


--
-- Name: COLUMN tb_estabelecimento.co_cep; Type: COMMENT; Schema: public; Owner: postgres
--

COMMENT ON COLUMN tb_estabelecimento.co_cep IS 'Código de Endereçamento Postal';


--
-- Name: COLUMN tb_estabelecimento.co_regiao_saude; Type: COMMENT; Schema: public; Owner: postgres
--

COMMENT ON COLUMN tb_estabelecimento.co_regiao_saude IS 'Código da Região de Saúde';


--
-- Name: COLUMN tb_estabelecimento.co_micro_regiao; Type: COMMENT; Schema: public; Owner: postgres
--

COMMENT ON COLUMN tb_estabelecimento.co_micro_regiao IS 'Código da Microrregião de Saúde';


--
-- Name: COLUMN tb_estabelecimento.co_distrito_sanitario; Type: COMMENT; Schema: public; Owner: postgres
--

COMMENT ON COLUMN tb_estabelecimento.co_distrito_sanitario IS 'Código do Distrito Sanitário';


--
-- Name: COLUMN tb_estabelecimento.co_distrito_administrativo; Type: COMMENT; Schema: public; Owner: postgres
--

COMMENT ON COLUMN tb_estabelecimento.co_distrito_administrativo IS 'Código do Módulo Assistencial (Conforma o plano Diretor de Regionalização do Estado/Município)';


--
-- Name: COLUMN tb_estabelecimento.nu_telefone; Type: COMMENT; Schema: public; Owner: postgres
--

COMMENT ON COLUMN tb_estabelecimento.nu_telefone IS 'Telefone';


--
-- Name: COLUMN tb_estabelecimento.nu_fax; Type: COMMENT; Schema: public; Owner: postgres
--

COMMENT ON COLUMN tb_estabelecimento.nu_fax IS 'Telefone';


--
-- Name: COLUMN tb_estabelecimento.no_email; Type: COMMENT; Schema: public; Owner: postgres
--

COMMENT ON COLUMN tb_estabelecimento.no_email IS 'e-Mail';


--
-- Name: COLUMN tb_estabelecimento.nu_cpf; Type: COMMENT; Schema: public; Owner: postgres
--

COMMENT ON COLUMN tb_estabelecimento.nu_cpf IS 'CPF do Estabelecimento
Esse campo só é preenchido no caso do campo PFPJ_IND = 1';


--
-- Name: COLUMN tb_estabelecimento.nu_cnpj; Type: COMMENT; Schema: public; Owner: postgres
--

COMMENT ON COLUMN tb_estabelecimento.nu_cnpj IS 'CNPJ do Estabelecimento
Esse campo só é preenchido no caso do campo PFPJ_IND = 3';


--
-- Name: COLUMN tb_estabelecimento.co_atividade; Type: COMMENT; Schema: public; Owner: postgres
--

COMMENT ON COLUMN tb_estabelecimento.co_atividade IS 'Código da Atividade de Ensino / Pesquisa';


--
-- Name: COLUMN tb_estabelecimento.co_clientela; Type: COMMENT; Schema: public; Owner: postgres
--

COMMENT ON COLUMN tb_estabelecimento.co_clientela IS 'Código de Fluxo da Clientela';


--
-- Name: COLUMN tb_estabelecimento.nu_alvara; Type: COMMENT; Schema: public; Owner: postgres
--

COMMENT ON COLUMN tb_estabelecimento.nu_alvara IS 'Número do Alvará (Vigilância Sanitária)';


--
-- Name: COLUMN tb_estabelecimento.dt_expedicao; Type: COMMENT; Schema: public; Owner: postgres
--

COMMENT ON COLUMN tb_estabelecimento.dt_expedicao IS 'Data de Expedição do Alvará (Vigilância Sanitária)';


--
-- Name: COLUMN tb_estabelecimento.tp_orgao_expedidor; Type: COMMENT; Schema: public; Owner: postgres
--

COMMENT ON COLUMN tb_estabelecimento.tp_orgao_expedidor IS 'Órgão Expedidor (Vigilância Sanitária)
1 - SES
2 - SMS';


--
-- Name: COLUMN tb_estabelecimento.dt_val_lic; Type: COMMENT; Schema: public; Owner: postgres
--

COMMENT ON COLUMN tb_estabelecimento.dt_val_lic IS 'Data de Validade do Licenciamento Sanitário';


--
-- Name: COLUMN tb_estabelecimento.tp_lic_sani; Type: COMMENT; Schema: public; Owner: postgres
--

COMMENT ON COLUMN tb_estabelecimento.tp_lic_sani IS 'Tipo do Licenciamento Sanitário
1 - Total
2 - Parcial/Restrições';


--
-- Name: COLUMN tb_estabelecimento.tp_unidade; Type: COMMENT; Schema: public; Owner: postgres
--

COMMENT ON COLUMN tb_estabelecimento.tp_unidade IS 'Tipo de Estabelecimento';


--
-- Name: COLUMN tb_estabelecimento.co_turno_atendimento; Type: COMMENT; Schema: public; Owner: postgres
--

COMMENT ON COLUMN tb_estabelecimento.co_turno_atendimento IS 'Código do Turno de Atendimento';


--
-- Name: COLUMN tb_estabelecimento.co_estado_gestor; Type: COMMENT; Schema: public; Owner: postgres
--

COMMENT ON COLUMN tb_estabelecimento.co_estado_gestor IS 'Sigla do Estado';


--
-- Name: COLUMN tb_estabelecimento.co_municipio_gestor; Type: COMMENT; Schema: public; Owner: postgres
--

COMMENT ON COLUMN tb_estabelecimento.co_municipio_gestor IS 'Código do Município';


--
-- Name: COLUMN tb_estabelecimento.dt_atualizacao; Type: COMMENT; Schema: public; Owner: postgres
--

COMMENT ON COLUMN tb_estabelecimento.dt_atualizacao IS 'Data da Última Atualização do Registro';


--
-- Name: COLUMN tb_estabelecimento.co_usuario; Type: COMMENT; Schema: public; Owner: postgres
--

COMMENT ON COLUMN tb_estabelecimento.co_usuario IS 'Último Usuário que atualizou o Registro';


--
-- Name: COLUMN tb_estabelecimento.co_cpfdiretorcln; Type: COMMENT; Schema: public; Owner: postgres
--

COMMENT ON COLUMN tb_estabelecimento.co_cpfdiretorcln IS 'CPF do Diretor Clínico ou Gerente / Administrador';


--
-- Name: COLUMN tb_estabelecimento.reg_direto; Type: COMMENT; Schema: public; Owner: postgres
--

COMMENT ON COLUMN tb_estabelecimento.reg_direto IS 'Registro no Conselho de CLasse do Diretor Clínico';


--
-- Name: COLUMN tb_estabelecimento.st_adesao_filantrop; Type: COMMENT; Schema: public; Owner: postgres
--

COMMENT ON COLUMN tb_estabelecimento.st_adesao_filantrop IS 'Indica se o hospital fez adesão ao Programa de Reestruturação de Hospital Filantrópico
1 - Sim
2 - Não';


--
-- Name: COLUMN tb_estabelecimento.co_motivo_desab; Type: COMMENT; Schema: public; Owner: postgres
--

COMMENT ON COLUMN tb_estabelecimento.co_motivo_desab IS 'Código do Motivo de Desativação do Estabelecimento';


--
-- Name: COLUMN tb_estabelecimento.no_url; Type: COMMENT; Schema: public; Owner: postgres
--

COMMENT ON COLUMN tb_estabelecimento.no_url IS 'Endereço URL';


--
-- Name: COLUMN tb_estabelecimento.nu_latitude; Type: COMMENT; Schema: public; Owner: postgres
--

COMMENT ON COLUMN tb_estabelecimento.nu_latitude IS 'Latitude do Endereço do Estabelecimento';


--
-- Name: COLUMN tb_estabelecimento.nu_longitude; Type: COMMENT; Schema: public; Owner: postgres
--

COMMENT ON COLUMN tb_estabelecimento.nu_longitude IS 'Longitude do Endereço do Estabelecimento';


--
-- Name: COLUMN tb_estabelecimento.dt_atu_geo; Type: COMMENT; Schema: public; Owner: postgres
--

COMMENT ON COLUMN tb_estabelecimento.dt_atu_geo IS 'Data de atualização das Coordenadas';


--
-- Name: COLUMN tb_estabelecimento.no_usuario_geo; Type: COMMENT; Schema: public; Owner: postgres
--

COMMENT ON COLUMN tb_estabelecimento.no_usuario_geo IS 'Nome do Usuário que atualizou as Coordenadas';


--
-- Name: COLUMN tb_estabelecimento.co_natureza_jur; Type: COMMENT; Schema: public; Owner: postgres
--

COMMENT ON COLUMN tb_estabelecimento.co_natureza_jur IS 'Código da Natureza Jurídica do Estabelecimento';


--
-- Name: COLUMN tb_estabelecimento.tp_estab_sempre_aberto; Type: COMMENT; Schema: public; Owner: postgres
--

COMMENT ON COLUMN tb_estabelecimento.tp_estab_sempre_aberto IS 'Funcionamento do estabelecimento: indica se fica sempre aberto / Ininterrupto
S - SIM
N - NÃO';


--
-- Name: COLUMN tb_estabelecimento.st_geracredito_gerente_sgif; Type: COMMENT; Schema: public; Owner: postgres
--

COMMENT ON COLUMN tb_estabelecimento.st_geracredito_gerente_sgif IS 'Indica se o créidto gerado pelo estab. será direcionado para o Gerente/Administrador(Terceiro)/Interveniente no SGIF (Sistema de Gestão de Informações Financeiras do SUS).
S - SIM
N - NÃO';


--
-- Name: COLUMN tb_estabelecimento.st_conexaointernet; Type: COMMENT; Schema: public; Owner: postgres
--

COMMENT ON COLUMN tb_estabelecimento.st_conexaointernet IS 'Possui Conexão Internet
S - Sim
N - Não';


--
-- Name: COLUMN tb_estabelecimento.co_tipo_unidade; Type: COMMENT; Schema: public; Owner: postgres
--

COMMENT ON COLUMN tb_estabelecimento.co_tipo_unidade IS 'Sem Uso';


--
-- Name: COLUMN tb_estabelecimento.no_fantasia_abrev; Type: COMMENT; Schema: public; Owner: postgres
--

COMMENT ON COLUMN tb_estabelecimento.no_fantasia_abrev IS 'Sem Uso';


--
-- Name: COLUMN tb_estabelecimento.tp_gestao; Type: COMMENT; Schema: public; Owner: postgres
--

COMMENT ON COLUMN tb_estabelecimento.tp_gestao IS 'Tipo de Gestão
M - Municipal
E - Estadual
D - Dupla
S - Sem Gestão';


--
-- Name: COLUMN tb_estabelecimento.dt_atualizacao_origem; Type: COMMENT; Schema: public; Owner: postgres
--

COMMENT ON COLUMN tb_estabelecimento.dt_atualizacao_origem IS 'Data da Primeira entrada no Banco de Produção Federal';


--
-- Name: COLUMN tb_estabelecimento.dt_cmtp_inicio; Type: COMMENT; Schema: public; Owner: postgres
--

COMMENT ON COLUMN tb_estabelecimento.dt_cmtp_inicio IS 'Data da Primeira entrada ou Data do Retorno no Banco de Produção Federal';


--
-- Name: COLUMN tb_estabelecimento.dt_cmtp_fim; Type: COMMENT; Schema: public; Owner: postgres
--

COMMENT ON COLUMN tb_estabelecimento.dt_cmtp_fim IS 'Data Final de Competência';


--
-- Name: COLUMN tb_estabelecimento.nu_seq_processo; Type: COMMENT; Schema: public; Owner: postgres
--

COMMENT ON COLUMN tb_estabelecimento.nu_seq_processo IS 'Número do Processo da Última Carga';


--
-- Name: tb_estado; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE tb_estado (
    co_uf character(2) NOT NULL,
    co_sigla character(2) NOT NULL,
    no_descricao character varying(40) NOT NULL,
    dt_atualizacao_origem date
);


ALTER TABLE tb_estado OWNER TO postgres;

--
-- Name: TABLE tb_estado; Type: COMMENT; Schema: public; Owner: postgres
--

COMMENT ON TABLE tb_estado IS 'UNIDADES DE FEDERAÇÃO';


--
-- Name: COLUMN tb_estado.co_uf; Type: COMMENT; Schema: public; Owner: postgres
--

COMMENT ON COLUMN tb_estado.co_uf IS 'Código da Unidade Federativa';


--
-- Name: COLUMN tb_estado.co_sigla; Type: COMMENT; Schema: public; Owner: postgres
--

COMMENT ON COLUMN tb_estado.co_sigla IS 'Sigla da Unidade Federativa';


--
-- Name: COLUMN tb_estado.no_descricao; Type: COMMENT; Schema: public; Owner: postgres
--

COMMENT ON COLUMN tb_estado.no_descricao IS 'Descrição da Unidade Federativa';


--
-- Name: COLUMN tb_estado.dt_atualizacao_origem; Type: COMMENT; Schema: public; Owner: postgres
--

COMMENT ON COLUMN tb_estado.dt_atualizacao_origem IS 'Sem uso';


--
-- Name: tb_fluxo_dados_clientela; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE tb_fluxo_dados_clientela (
    co_clientela character varying(2) NOT NULL,
    ds_clientela character varying(60) NOT NULL,
    dt_atualizacao_origem date
);


ALTER TABLE tb_fluxo_dados_clientela OWNER TO postgres;

--
-- Name: TABLE tb_fluxo_dados_clientela; Type: COMMENT; Schema: public; Owner: postgres
--

COMMENT ON TABLE tb_fluxo_dados_clientela IS 'FLUXO DE CLIENTELA';


--
-- Name: COLUMN tb_fluxo_dados_clientela.co_clientela; Type: COMMENT; Schema: public; Owner: postgres
--

COMMENT ON COLUMN tb_fluxo_dados_clientela.co_clientela IS 'Código do Fluxo de Clientela';


--
-- Name: COLUMN tb_fluxo_dados_clientela.ds_clientela; Type: COMMENT; Schema: public; Owner: postgres
--

COMMENT ON COLUMN tb_fluxo_dados_clientela.ds_clientela IS 'Descrição do Fluxo de Clientela';


--
-- Name: COLUMN tb_fluxo_dados_clientela.dt_atualizacao_origem; Type: COMMENT; Schema: public; Owner: postgres
--

COMMENT ON COLUMN tb_fluxo_dados_clientela.dt_atualizacao_origem IS 'Sem Uso';


--
-- Name: tb_gestao; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE tb_gestao (
    co_gestao character varying(2) NOT NULL,
    ds_gestao character varying(60),
    tp_prog character(1)
);


ALTER TABLE tb_gestao OWNER TO postgres;

--
-- Name: TABLE tb_gestao; Type: COMMENT; Schema: public; Owner: postgres
--

COMMENT ON TABLE tb_gestao IS 'NIVEL DE ATENÇÃO / ATIVIDADE';


--
-- Name: COLUMN tb_gestao.co_gestao; Type: COMMENT; Schema: public; Owner: postgres
--

COMMENT ON COLUMN tb_gestao.co_gestao IS 'Código do Tipo de Atendimento (Atividade)';


--
-- Name: COLUMN tb_gestao.ds_gestao; Type: COMMENT; Schema: public; Owner: postgres
--

COMMENT ON COLUMN tb_gestao.ds_gestao IS 'Descrição do Tipo de Atendimento (Atividade)';


--
-- Name: COLUMN tb_gestao.tp_prog; Type: COMMENT; Schema: public; Owner: postgres
--

COMMENT ON COLUMN tb_gestao.tp_prog IS 'Tipo
0 - Não se Aplica
1 - Ambulatorial
2 - Hospitalar';


--
-- Name: tb_mod_vinculo; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE tb_mod_vinculo (
    cd_vinculacao character varying(2) NOT NULL,
    ds_vinculacao character varying(60) NOT NULL,
    st_habilitado character(1)
);


ALTER TABLE tb_mod_vinculo OWNER TO postgres;

--
-- Name: TABLE tb_mod_vinculo; Type: COMMENT; Schema: public; Owner: postgres
--

COMMENT ON TABLE tb_mod_vinculo IS 'Vínculo com o estabelecimento';


--
-- Name: COLUMN tb_mod_vinculo.cd_vinculacao; Type: COMMENT; Schema: public; Owner: postgres
--

COMMENT ON COLUMN tb_mod_vinculo.cd_vinculacao IS 'Código da Vinculação';


--
-- Name: COLUMN tb_mod_vinculo.ds_vinculacao; Type: COMMENT; Schema: public; Owner: postgres
--

COMMENT ON COLUMN tb_mod_vinculo.ds_vinculacao IS 'Descrição da Vinculação';


--
-- Name: COLUMN tb_mod_vinculo.st_habilitado; Type: COMMENT; Schema: public; Owner: postgres
--

COMMENT ON COLUMN tb_mod_vinculo.st_habilitado IS 'Indica se o Vínculo se encontra ativo
S - Sim
N - Não';


--
-- Name: tb_motivo_desativacao; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE tb_motivo_desativacao (
    cd_motivo_desab character(2) NOT NULL,
    ds_motivo_desab character varying(60) NOT NULL
);


ALTER TABLE tb_motivo_desativacao OWNER TO postgres;

--
-- Name: TABLE tb_motivo_desativacao; Type: COMMENT; Schema: public; Owner: postgres
--

COMMENT ON TABLE tb_motivo_desativacao IS 'MOTIVO DE DESATIVAÇÃO DO ESTABELECIMENTO DE SAÚDE';


--
-- Name: COLUMN tb_motivo_desativacao.cd_motivo_desab; Type: COMMENT; Schema: public; Owner: postgres
--

COMMENT ON COLUMN tb_motivo_desativacao.cd_motivo_desab IS 'Código do Motivo de Desativação';


--
-- Name: COLUMN tb_motivo_desativacao.ds_motivo_desab; Type: COMMENT; Schema: public; Owner: postgres
--

COMMENT ON COLUMN tb_motivo_desativacao.ds_motivo_desab IS 'Descrição do Motivo de Desativação';


--
-- Name: tb_municipio; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE tb_municipio (
    co_municipio character varying(6) NOT NULL,
    no_municipio character varying(60) NOT NULL,
    co_sigla_estado character varying(2) NOT NULL,
    tp_cadastro character(1),
    tp_pacto character(1),
    tp_envia character(1),
    tp_envia_cnes character(1),
    tp_cib_sas character(1),
    tp_pleno_origem character(1),
    tp_mac character varying(1),
    nu_populacao numeric(10,0),
    nu_densidade numeric(10,2),
    cmpt_inicio_mac character varying(6),
    nu_id numeric(10,0),
    dt_atualizacao_origem date,
    tp_capital character(1),
    dt_vigencia date,
    st_municipio character(1),
    dt_cmtp_inicio date,
    dt_cmtp_fim date,
    fl_ativo character(1)
);


ALTER TABLE tb_municipio OWNER TO postgres;

--
-- Name: TABLE tb_municipio; Type: COMMENT; Schema: public; Owner: postgres
--

COMMENT ON TABLE tb_municipio IS 'MUNICÍPIOS';


--
-- Name: COLUMN tb_municipio.co_municipio; Type: COMMENT; Schema: public; Owner: postgres
--

COMMENT ON COLUMN tb_municipio.co_municipio IS 'Código do Município (Código Fornecido pelo IBGE)';


--
-- Name: COLUMN tb_municipio.no_municipio; Type: COMMENT; Schema: public; Owner: postgres
--

COMMENT ON COLUMN tb_municipio.no_municipio IS 'Nome do Município';


--
-- Name: COLUMN tb_municipio.co_sigla_estado; Type: COMMENT; Schema: public; Owner: postgres
--

COMMENT ON COLUMN tb_municipio.co_sigla_estado IS 'Sigla da Unidade Federativa';


--
-- Name: COLUMN tb_municipio.tp_cadastro; Type: COMMENT; Schema: public; Owner: postgres
--

COMMENT ON COLUMN tb_municipio.tp_cadastro IS 'Indica se o município pode e se já fez o cadastro no site:
0 - Não cadastrado (pode cadastrar)
S - Cadastrado
N - Município não pode se cadastrar';


--
-- Name: COLUMN tb_municipio.tp_pacto; Type: COMMENT; Schema: public; Owner: postgres
--

COMMENT ON COLUMN tb_municipio.tp_pacto IS 'Indica se o município aderiu ao pacto de gestão
S - Sim
N - Não';


--
-- Name: COLUMN tb_municipio.tp_envia; Type: COMMENT; Schema: public; Owner: postgres
--

COMMENT ON COLUMN tb_municipio.tp_envia IS 'Indica se o município pode enviar base para o Datasus
1 - Pode enviar bases dos sistemas CNES, SIHD e SIA
2 - Pode enviar apenas CNES e SIA
3 - Não pode enviar nenhuma base.';


--
-- Name: COLUMN tb_municipio.tp_envia_cnes; Type: COMMENT; Schema: public; Owner: postgres
--

COMMENT ON COLUMN tb_municipio.tp_envia_cnes IS 'Indica se o município pode enviar base do CNES para o Datasus
S - Sim
N - Não';


--
-- Name: COLUMN tb_municipio.tp_cib_sas; Type: COMMENT; Schema: public; Owner: postgres
--

COMMENT ON COLUMN tb_municipio.tp_cib_sas IS 'Indica o pacto da CIB
S = Não está na CIB
N = Está na CIB';


--
-- Name: COLUMN tb_municipio.tp_pleno_origem; Type: COMMENT; Schema: public; Owner: postgres
--

COMMENT ON COLUMN tb_municipio.tp_pleno_origem IS 'Indica se o Município é Pleno
S - Sim
N - Não';


--
-- Name: COLUMN tb_municipio.tp_mac; Type: COMMENT; Schema: public; Owner: postgres
--

COMMENT ON COLUMN tb_municipio.tp_mac IS 'Indica se tem MAC
S - Sim
N - Não';


--
-- Name: COLUMN tb_municipio.nu_populacao; Type: COMMENT; Schema: public; Owner: postgres
--

COMMENT ON COLUMN tb_municipio.nu_populacao IS 'População do município';


--
-- Name: COLUMN tb_municipio.nu_densidade; Type: COMMENT; Schema: public; Owner: postgres
--

COMMENT ON COLUMN tb_municipio.nu_densidade IS 'Densidade Demográfica';


--
-- Name: COLUMN tb_municipio.cmpt_inicio_mac; Type: COMMENT; Schema: public; Owner: postgres
--

COMMENT ON COLUMN tb_municipio.cmpt_inicio_mac IS 'Competência inicial do MAC';


--
-- Name: COLUMN tb_municipio.nu_id; Type: COMMENT; Schema: public; Owner: postgres
--

COMMENT ON COLUMN tb_municipio.nu_id IS 'Sem Uso';


--
-- Name: COLUMN tb_municipio.dt_atualizacao_origem; Type: COMMENT; Schema: public; Owner: postgres
--

COMMENT ON COLUMN tb_municipio.dt_atualizacao_origem IS 'Sem Uso';


--
-- Name: COLUMN tb_municipio.dt_vigencia; Type: COMMENT; Schema: public; Owner: postgres
--

COMMENT ON COLUMN tb_municipio.dt_vigencia IS 'Sem Uso';


--
-- Name: COLUMN tb_municipio.dt_cmtp_inicio; Type: COMMENT; Schema: public; Owner: postgres
--

COMMENT ON COLUMN tb_municipio.dt_cmtp_inicio IS 'Data de competência inicial';


--
-- Name: COLUMN tb_municipio.dt_cmtp_fim; Type: COMMENT; Schema: public; Owner: postgres
--

COMMENT ON COLUMN tb_municipio.dt_cmtp_fim IS 'Data de competência final';


--
-- Name: COLUMN tb_municipio.fl_ativo; Type: COMMENT; Schema: public; Owner: postgres
--

COMMENT ON COLUMN tb_municipio.fl_ativo IS 'Indica se o município está ativo ou não.
S - Sim
N - Não';


--
-- Name: tb_natureza_juridica; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE tb_natureza_juridica (
    co_natureza_jur character varying(4) NOT NULL,
    ds_natureza_jur character varying(120) NOT NULL,
    dt_atualizacao_origem date,
    st_movimentacao character(1),
    dt_cmtp_inicio date,
    dt_cmtp_fim date
);


ALTER TABLE tb_natureza_juridica OWNER TO postgres;

--
-- Name: TABLE tb_natureza_juridica; Type: COMMENT; Schema: public; Owner: postgres
--

COMMENT ON TABLE tb_natureza_juridica IS 'NATUREZA JURÍDICA';


--
-- Name: COLUMN tb_natureza_juridica.co_natureza_jur; Type: COMMENT; Schema: public; Owner: postgres
--

COMMENT ON COLUMN tb_natureza_juridica.co_natureza_jur IS 'Código da Natureza Jurídica';


--
-- Name: COLUMN tb_natureza_juridica.ds_natureza_jur; Type: COMMENT; Schema: public; Owner: postgres
--

COMMENT ON COLUMN tb_natureza_juridica.ds_natureza_jur IS 'Descrição da Natureza Jurídica';


--
-- Name: COLUMN tb_natureza_juridica.dt_atualizacao_origem; Type: COMMENT; Schema: public; Owner: postgres
--

COMMENT ON COLUMN tb_natureza_juridica.dt_atualizacao_origem IS 'Sem Uso';


--
-- Name: COLUMN tb_natureza_juridica.st_movimentacao; Type: COMMENT; Schema: public; Owner: postgres
--

COMMENT ON COLUMN tb_natureza_juridica.st_movimentacao IS 'Sem Uso';


--
-- Name: COLUMN tb_natureza_juridica.dt_cmtp_inicio; Type: COMMENT; Schema: public; Owner: postgres
--

COMMENT ON COLUMN tb_natureza_juridica.dt_cmtp_inicio IS 'Sem Uso';


--
-- Name: COLUMN tb_natureza_juridica.dt_cmtp_fim; Type: COMMENT; Schema: public; Owner: postgres
--

COMMENT ON COLUMN tb_natureza_juridica.dt_cmtp_fim IS 'Sem Uso';


--
-- Name: tb_orgao_emissor; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE tb_orgao_emissor (
    co_orgao_emissor character varying(2) NOT NULL,
    ds_orgao_emissor character varying(60),
    dt_atualizacao_origem date
);


ALTER TABLE tb_orgao_emissor OWNER TO postgres;

--
-- Name: TABLE tb_orgao_emissor; Type: COMMENT; Schema: public; Owner: postgres
--

COMMENT ON TABLE tb_orgao_emissor IS 'ÓRGÃO EMISSOR';


--
-- Name: COLUMN tb_orgao_emissor.co_orgao_emissor; Type: COMMENT; Schema: public; Owner: postgres
--

COMMENT ON COLUMN tb_orgao_emissor.co_orgao_emissor IS 'Código do Órgão Emissor';


--
-- Name: COLUMN tb_orgao_emissor.ds_orgao_emissor; Type: COMMENT; Schema: public; Owner: postgres
--

COMMENT ON COLUMN tb_orgao_emissor.ds_orgao_emissor IS 'Descrição do Órgão Emissor';


--
-- Name: COLUMN tb_orgao_emissor.dt_atualizacao_origem; Type: COMMENT; Schema: public; Owner: postgres
--

COMMENT ON COLUMN tb_orgao_emissor.dt_atualizacao_origem IS 'Sem Uso';


--
-- Name: tb_sub_tp_mod_vinculo; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE tb_sub_tp_mod_vinculo (
    ind_vinculacao character(6) NOT NULL,
    cd_vinculacao character varying(2) NOT NULL,
    tp_vinculo character varying(2) NOT NULL,
    tp_subvinculo character varying(2) NOT NULL,
    ds_subvinculo character varying(60) NOT NULL,
    st_habilitado character(1),
    st_solicita_cnpj character(1),
    tp_categoria character(1)
);


ALTER TABLE tb_sub_tp_mod_vinculo OWNER TO postgres;

--
-- Name: TABLE tb_sub_tp_mod_vinculo; Type: COMMENT; Schema: public; Owner: postgres
--

COMMENT ON TABLE tb_sub_tp_mod_vinculo IS 'DETALHAMENTO DO VÍNCULO';


--
-- Name: COLUMN tb_sub_tp_mod_vinculo.ind_vinculacao; Type: COMMENT; Schema: public; Owner: postgres
--

COMMENT ON COLUMN tb_sub_tp_mod_vinculo.ind_vinculacao IS 'Indica a vinculação, o tipo e o sub tipo de vinculo do Profissional com o Estabelecimento de Saúde';


--
-- Name: COLUMN tb_sub_tp_mod_vinculo.cd_vinculacao; Type: COMMENT; Schema: public; Owner: postgres
--

COMMENT ON COLUMN tb_sub_tp_mod_vinculo.cd_vinculacao IS 'Código da Vinculação';


--
-- Name: COLUMN tb_sub_tp_mod_vinculo.tp_vinculo; Type: COMMENT; Schema: public; Owner: postgres
--

COMMENT ON COLUMN tb_sub_tp_mod_vinculo.tp_vinculo IS 'Tipo do Vinculo';


--
-- Name: COLUMN tb_sub_tp_mod_vinculo.tp_subvinculo; Type: COMMENT; Schema: public; Owner: postgres
--

COMMENT ON COLUMN tb_sub_tp_mod_vinculo.tp_subvinculo IS 'SubTipo do Vinculo';


--
-- Name: COLUMN tb_sub_tp_mod_vinculo.ds_subvinculo; Type: COMMENT; Schema: public; Owner: postgres
--

COMMENT ON COLUMN tb_sub_tp_mod_vinculo.ds_subvinculo IS 'Descrição do SubTipo do Vínculo';


--
-- Name: COLUMN tb_sub_tp_mod_vinculo.st_habilitado; Type: COMMENT; Schema: public; Owner: postgres
--

COMMENT ON COLUMN tb_sub_tp_mod_vinculo.st_habilitado IS 'Indica se o Vínculo se encontra ativo
S - Sim
N - Não';


--
-- Name: COLUMN tb_sub_tp_mod_vinculo.st_solicita_cnpj; Type: COMMENT; Schema: public; Owner: postgres
--

COMMENT ON COLUMN tb_sub_tp_mod_vinculo.st_solicita_cnpj IS 'Indica se o Vínculo exige CNPJ do Empregador
S - Sim
N - Não';


--
-- Name: COLUMN tb_sub_tp_mod_vinculo.tp_categoria; Type: COMMENT; Schema: public; Owner: postgres
--

COMMENT ON COLUMN tb_sub_tp_mod_vinculo.tp_categoria IS 'Tipo de Categoria do Vínculo do Profissional';


--
-- Name: tb_tipo_equipamento; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE tb_tipo_equipamento (
    co_tipo_equipamento character varying(1) NOT NULL,
    ds_tipo_equipamento character varying(60) NOT NULL,
    dt_atualizacao_origem date
);


ALTER TABLE tb_tipo_equipamento OWNER TO postgres;

--
-- Name: TABLE tb_tipo_equipamento; Type: COMMENT; Schema: public; Owner: postgres
--

COMMENT ON TABLE tb_tipo_equipamento IS 'TIPOS DE EQUIPAMENTOS';


--
-- Name: COLUMN tb_tipo_equipamento.co_tipo_equipamento; Type: COMMENT; Schema: public; Owner: postgres
--

COMMENT ON COLUMN tb_tipo_equipamento.co_tipo_equipamento IS 'Código do Tipo de Equipamento';


--
-- Name: COLUMN tb_tipo_equipamento.ds_tipo_equipamento; Type: COMMENT; Schema: public; Owner: postgres
--

COMMENT ON COLUMN tb_tipo_equipamento.ds_tipo_equipamento IS 'Descrição do Tipo de Equipamento';


--
-- Name: COLUMN tb_tipo_equipamento.dt_atualizacao_origem; Type: COMMENT; Schema: public; Owner: postgres
--

COMMENT ON COLUMN tb_tipo_equipamento.dt_atualizacao_origem IS 'Sem Uso';


--
-- Name: tb_tipo_unidade; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE tb_tipo_unidade (
    co_tipo_unidade character varying(2) NOT NULL,
    ds_tipo_unidade character varying(60) NOT NULL,
    dt_atualizacao_origem date
);


ALTER TABLE tb_tipo_unidade OWNER TO postgres;

--
-- Name: TABLE tb_tipo_unidade; Type: COMMENT; Schema: public; Owner: postgres
--

COMMENT ON TABLE tb_tipo_unidade IS 'TIPO DE ESTABELECIMENTO';


--
-- Name: COLUMN tb_tipo_unidade.co_tipo_unidade; Type: COMMENT; Schema: public; Owner: postgres
--

COMMENT ON COLUMN tb_tipo_unidade.co_tipo_unidade IS 'Código do Tipo de Estabelecimento';


--
-- Name: COLUMN tb_tipo_unidade.ds_tipo_unidade; Type: COMMENT; Schema: public; Owner: postgres
--

COMMENT ON COLUMN tb_tipo_unidade.ds_tipo_unidade IS 'Descrição do Tipo de Estabelecimento';


--
-- Name: COLUMN tb_tipo_unidade.dt_atualizacao_origem; Type: COMMENT; Schema: public; Owner: postgres
--

COMMENT ON COLUMN tb_tipo_unidade.dt_atualizacao_origem IS 'Sem Uso';


--
-- Name: tb_tp_mod_vinculo; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE tb_tp_mod_vinculo (
    cd_vinculacao character varying(2) NOT NULL,
    tp_vinculo character varying(2) NOT NULL,
    ds_vinculo character varying(60) NOT NULL,
    st_habilitado character(1)
);


ALTER TABLE tb_tp_mod_vinculo OWNER TO postgres;

--
-- Name: TABLE tb_tp_mod_vinculo; Type: COMMENT; Schema: public; Owner: postgres
--

COMMENT ON TABLE tb_tp_mod_vinculo IS 'Vínculo com o empregador';


--
-- Name: COLUMN tb_tp_mod_vinculo.cd_vinculacao; Type: COMMENT; Schema: public; Owner: postgres
--

COMMENT ON COLUMN tb_tp_mod_vinculo.cd_vinculacao IS 'Código da Vinculação';


--
-- Name: COLUMN tb_tp_mod_vinculo.tp_vinculo; Type: COMMENT; Schema: public; Owner: postgres
--

COMMENT ON COLUMN tb_tp_mod_vinculo.tp_vinculo IS 'Tipo do Vínculo';


--
-- Name: COLUMN tb_tp_mod_vinculo.ds_vinculo; Type: COMMENT; Schema: public; Owner: postgres
--

COMMENT ON COLUMN tb_tp_mod_vinculo.ds_vinculo IS 'Descrição do Vínculo';


--
-- Name: COLUMN tb_tp_mod_vinculo.st_habilitado; Type: COMMENT; Schema: public; Owner: postgres
--

COMMENT ON COLUMN tb_tp_mod_vinculo.st_habilitado IS 'Indica se o Vínculo se encontra ativo
S - SIM
N - Não';


--
-- Name: tb_turno_atendimento; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE tb_turno_atendimento (
    co_turno_atendimento character varying(2) NOT NULL,
    ds_turno_atendimento character varying(200) NOT NULL,
    dt_atualizacao_origem date
);


ALTER TABLE tb_turno_atendimento OWNER TO postgres;

--
-- Name: TABLE tb_turno_atendimento; Type: COMMENT; Schema: public; Owner: postgres
--

COMMENT ON TABLE tb_turno_atendimento IS 'TURNO DE ATENDIMENTO';


--
-- Name: COLUMN tb_turno_atendimento.co_turno_atendimento; Type: COMMENT; Schema: public; Owner: postgres
--

COMMENT ON COLUMN tb_turno_atendimento.co_turno_atendimento IS 'Código do Turno de Atendimento';


--
-- Name: COLUMN tb_turno_atendimento.ds_turno_atendimento; Type: COMMENT; Schema: public; Owner: postgres
--

COMMENT ON COLUMN tb_turno_atendimento.ds_turno_atendimento IS 'Descrição do Turno de Atendimento';


--
-- Name: COLUMN tb_turno_atendimento.dt_atualizacao_origem; Type: COMMENT; Schema: public; Owner: postgres
--

COMMENT ON COLUMN tb_turno_atendimento.dt_atualizacao_origem IS 'Sem uso';


--
-- Name: rl_estab_equipamento rl_estab_equipamento_co_unidade_co_equipamento_co_tipo_equipame; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY rl_estab_equipamento
    ADD CONSTRAINT rl_estab_equipamento_co_unidade_co_equipamento_co_tipo_equipame PRIMARY KEY (co_unidade, co_equipamento, co_tipo_equipamento);


--
-- Name: rl_estab_prog_fundo rl_estab_prog_fundo_co_unidade_co_atividade_tp_estadual_municip; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY rl_estab_prog_fundo
    ADD CONSTRAINT rl_estab_prog_fundo_co_unidade_co_atividade_tp_estadual_municip PRIMARY KEY (co_unidade, co_atividade, tp_estadual_municipal);


--
-- Name: tb_atividade_ensino tb_atividade_ensino_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY tb_atividade_ensino
    ADD CONSTRAINT tb_atividade_ensino_pkey PRIMARY KEY (co_atividade);


--
-- Name: tb_atividade_profissional tb_atividade_profissional_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY tb_atividade_profissional
    ADD CONSTRAINT tb_atividade_profissional_pkey PRIMARY KEY (co_cbo);


--
-- Name: tb_carga_horaria_sus tb_carga_horaria_sus_co_unidade_co_profissional_sus_co_cbo_tp_s; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY tb_carga_horaria_sus
    ADD CONSTRAINT tb_carga_horaria_sus_co_unidade_co_profissional_sus_co_cbo_tp_s PRIMARY KEY (co_unidade, co_profissional_sus, co_cbo, tp_sus_nao_sus, ind_vinculacao);


--
-- Name: tb_dados_profissional_sus tb_dados_profissional_sus_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY tb_dados_profissional_sus
    ADD CONSTRAINT tb_dados_profissional_sus_pkey PRIMARY KEY (co_profissional_sus);


--
-- Name: tb_equipamento tb_equipamento_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY tb_equipamento
    ADD CONSTRAINT tb_equipamento_pkey PRIMARY KEY (co_equipamento);


--
-- Name: tb_estabelecimento tb_estabelecimento_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY tb_estabelecimento
    ADD CONSTRAINT tb_estabelecimento_pkey PRIMARY KEY (co_unidade);


--
-- Name: tb_estado tb_estado_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY tb_estado
    ADD CONSTRAINT tb_estado_pkey PRIMARY KEY (co_uf);


--
-- Name: tb_fluxo_dados_clientela tb_fluxo_dados_clientela_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY tb_fluxo_dados_clientela
    ADD CONSTRAINT tb_fluxo_dados_clientela_pkey PRIMARY KEY (co_clientela);


--
-- Name: tb_gestao tb_gestao_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY tb_gestao
    ADD CONSTRAINT tb_gestao_pkey PRIMARY KEY (co_gestao);


--
-- Name: tb_mod_vinculo tb_mod_vinculo_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY tb_mod_vinculo
    ADD CONSTRAINT tb_mod_vinculo_pkey PRIMARY KEY (cd_vinculacao);


--
-- Name: tb_motivo_desativacao tb_motivo_desativacao_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY tb_motivo_desativacao
    ADD CONSTRAINT tb_motivo_desativacao_pkey PRIMARY KEY (cd_motivo_desab);


--
-- Name: tb_municipio tb_municipio_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY tb_municipio
    ADD CONSTRAINT tb_municipio_pkey PRIMARY KEY (co_municipio);


--
-- Name: tb_natureza_juridica tb_natureza_juridica_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY tb_natureza_juridica
    ADD CONSTRAINT tb_natureza_juridica_pkey PRIMARY KEY (co_natureza_jur);


--
-- Name: tb_orgao_emissor tb_orgao_emissor_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY tb_orgao_emissor
    ADD CONSTRAINT tb_orgao_emissor_pkey PRIMARY KEY (co_orgao_emissor);


--
-- Name: tb_sub_tp_mod_vinculo tb_sub_tp_mod_vinculo_ind_vinculacao_pk; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY tb_sub_tp_mod_vinculo
    ADD CONSTRAINT tb_sub_tp_mod_vinculo_ind_vinculacao_pk PRIMARY KEY (ind_vinculacao);


--
-- Name: tb_tipo_equipamento tb_tipo_equipamento_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY tb_tipo_equipamento
    ADD CONSTRAINT tb_tipo_equipamento_pkey PRIMARY KEY (co_tipo_equipamento);


--
-- Name: tb_tipo_unidade tb_tipo_unidade_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY tb_tipo_unidade
    ADD CONSTRAINT tb_tipo_unidade_pkey PRIMARY KEY (co_tipo_unidade);


--
-- Name: tb_tp_mod_vinculo tb_tp_mod_vinculo_tp_vinculo_cd_vinculacao_pk; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY tb_tp_mod_vinculo
    ADD CONSTRAINT tb_tp_mod_vinculo_tp_vinculo_cd_vinculacao_pk PRIMARY KEY (tp_vinculo, cd_vinculacao);


--
-- Name: tb_turno_atendimento tb_turno_atendimento_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY tb_turno_atendimento
    ADD CONSTRAINT tb_turno_atendimento_pkey PRIMARY KEY (co_turno_atendimento);


--
-- Name: tb_sub_tp_mod_vinculo_ind_vinculacao_uindex; Type: INDEX; Schema: public; Owner: postgres
--

CREATE UNIQUE INDEX tb_sub_tp_mod_vinculo_ind_vinculacao_uindex ON tb_sub_tp_mod_vinculo USING btree (ind_vinculacao);


--
-- Name: rl_estab_equipamento fk_rl_estab_equipamento_tb_equipamento; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY rl_estab_equipamento
    ADD CONSTRAINT fk_rl_estab_equipamento_tb_equipamento FOREIGN KEY (co_equipamento) REFERENCES tb_equipamento(co_equipamento);


--
-- Name: rl_estab_equipamento fk_rl_estab_equipamento_tb_estabelecimento; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY rl_estab_equipamento
    ADD CONSTRAINT fk_rl_estab_equipamento_tb_estabelecimento FOREIGN KEY (co_unidade) REFERENCES tb_estabelecimento(co_unidade);


--
-- Name: rl_estab_equipamento fk_rl_estab_equipamento_tb_tipo_equipamento; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY rl_estab_equipamento
    ADD CONSTRAINT fk_rl_estab_equipamento_tb_tipo_equipamento FOREIGN KEY (co_tipo_equipamento) REFERENCES tb_tipo_equipamento(co_tipo_equipamento);


--
-- Name: rl_estab_prog_fundo fk_rl_estab_prog_fundo_tb_estabelecimento; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY rl_estab_prog_fundo
    ADD CONSTRAINT fk_rl_estab_prog_fundo_tb_estabelecimento FOREIGN KEY (co_unidade) REFERENCES tb_estabelecimento(co_unidade);


--
-- Name: rl_estab_prog_fundo fk_rl_estab_prog_fundo_tb_gestao; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY rl_estab_prog_fundo
    ADD CONSTRAINT fk_rl_estab_prog_fundo_tb_gestao FOREIGN KEY (co_atividade) REFERENCES tb_gestao(co_gestao);


--
-- Name: tb_carga_horaria_sus fk_tb_carga_horaria_sus_tb_atividade_profissional; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY tb_carga_horaria_sus
    ADD CONSTRAINT fk_tb_carga_horaria_sus_tb_atividade_profissional FOREIGN KEY (co_cbo) REFERENCES tb_atividade_profissional(co_cbo);


--
-- Name: tb_carga_horaria_sus fk_tb_carga_horaria_sus_tb_dados_profissional_sus_co_profission; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY tb_carga_horaria_sus
    ADD CONSTRAINT fk_tb_carga_horaria_sus_tb_dados_profissional_sus_co_profission FOREIGN KEY (co_profissional_sus) REFERENCES tb_dados_profissional_sus(co_profissional_sus);


--
-- Name: tb_carga_horaria_sus fk_tb_carga_horaria_sus_tb_estabelecimento_co_unidade; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY tb_carga_horaria_sus
    ADD CONSTRAINT fk_tb_carga_horaria_sus_tb_estabelecimento_co_unidade FOREIGN KEY (co_unidade) REFERENCES tb_estabelecimento(co_unidade);


--
-- Name: tb_carga_horaria_sus fk_tb_carga_horaria_sus_tb_orgao_emissor; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY tb_carga_horaria_sus
    ADD CONSTRAINT fk_tb_carga_horaria_sus_tb_orgao_emissor FOREIGN KEY (co_conselho_classe) REFERENCES tb_orgao_emissor(co_orgao_emissor);


--
-- Name: tb_carga_horaria_sus fk_tb_carga_horaria_sus_tb_sub_tp_mod_vinculo; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY tb_carga_horaria_sus
    ADD CONSTRAINT fk_tb_carga_horaria_sus_tb_sub_tp_mod_vinculo FOREIGN KEY (ind_vinculacao) REFERENCES tb_sub_tp_mod_vinculo(ind_vinculacao);


--
-- Name: tb_equipamento fk_tb_equipamento_tb_tipo_equipamento; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY tb_equipamento
    ADD CONSTRAINT fk_tb_equipamento_tb_tipo_equipamento FOREIGN KEY (co_tipo_equipamento) REFERENCES tb_tipo_equipamento(co_tipo_equipamento);


--
-- Name: tb_estabelecimento fk_tb_estabelecimento_tb_atividade_ensino; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY tb_estabelecimento
    ADD CONSTRAINT fk_tb_estabelecimento_tb_atividade_ensino FOREIGN KEY (co_atividade) REFERENCES tb_atividade_ensino(co_atividade);


--
-- Name: tb_estabelecimento fk_tb_estabelecimento_tb_estado; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY tb_estabelecimento
    ADD CONSTRAINT fk_tb_estabelecimento_tb_estado FOREIGN KEY (co_estado_gestor) REFERENCES tb_estado(co_uf);


--
-- Name: tb_estabelecimento fk_tb_estabelecimento_tb_fluxo_dados_clientela; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY tb_estabelecimento
    ADD CONSTRAINT fk_tb_estabelecimento_tb_fluxo_dados_clientela FOREIGN KEY (co_clientela) REFERENCES tb_fluxo_dados_clientela(co_clientela);


--
-- Name: tb_estabelecimento fk_tb_estabelecimento_tb_motivo_desativacao; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY tb_estabelecimento
    ADD CONSTRAINT fk_tb_estabelecimento_tb_motivo_desativacao FOREIGN KEY (co_motivo_desab) REFERENCES tb_motivo_desativacao(cd_motivo_desab);


--
-- Name: tb_estabelecimento fk_tb_estabelecimento_tb_municipio; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY tb_estabelecimento
    ADD CONSTRAINT fk_tb_estabelecimento_tb_municipio FOREIGN KEY (co_municipio_gestor) REFERENCES tb_municipio(co_municipio);


--
-- Name: tb_estabelecimento fk_tb_estabelecimento_tb_natureza_juridica; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY tb_estabelecimento
    ADD CONSTRAINT fk_tb_estabelecimento_tb_natureza_juridica FOREIGN KEY (co_natureza_jur) REFERENCES tb_natureza_juridica(co_natureza_jur);


--
-- Name: tb_estabelecimento fk_tb_estabelecimento_tb_tipo_unidade; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY tb_estabelecimento
    ADD CONSTRAINT fk_tb_estabelecimento_tb_tipo_unidade FOREIGN KEY (tp_unidade) REFERENCES tb_tipo_unidade(co_tipo_unidade);


--
-- Name: tb_estabelecimento fk_tb_estabelecimento_tb_turno_atendimento; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY tb_estabelecimento
    ADD CONSTRAINT fk_tb_estabelecimento_tb_turno_atendimento FOREIGN KEY (co_turno_atendimento) REFERENCES tb_turno_atendimento(co_turno_atendimento);


--
-- Name: tb_sub_tp_mod_vinculo fk_tb_sub_tp_mod_vinculo_tb_tp_mod_vinculo_cd_vinculacao_tp_vin; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY tb_sub_tp_mod_vinculo
    ADD CONSTRAINT fk_tb_sub_tp_mod_vinculo_tb_tp_mod_vinculo_cd_vinculacao_tp_vin FOREIGN KEY (cd_vinculacao, tp_vinculo) REFERENCES tb_tp_mod_vinculo(cd_vinculacao, tp_vinculo);


--
-- Name: tb_tp_mod_vinculo tb_tp_mod_vinculo_tb_mod_vinculo_cd_vinculacao_fk; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY tb_tp_mod_vinculo
    ADD CONSTRAINT tb_tp_mod_vinculo_tb_mod_vinculo_cd_vinculacao_fk FOREIGN KEY (cd_vinculacao) REFERENCES tb_mod_vinculo(cd_vinculacao);


--
-- PostgreSQL database dump complete
--

