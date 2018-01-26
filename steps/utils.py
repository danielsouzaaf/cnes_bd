#!/usr/bin/env python
# -*- coding: utf-8 -*-

import requests
from datetime import datetime

import psycopg2
import psycopg2.extras


def registrar_progresso(mensagem):
    progesso = open('progesso.txt', 'a')
    progesso.write("{0}\n".format(mensagem))
    progesso.close()


def executar_SQL(connection, command):
    erros = open('erros.txt', 'a')
    cursor = connection.cursor()

    try:
        cursor.execute(command)
        connection.commit()
    except Exception as err:
        erros.write('%s \n %s \n\n' % (command, err.message))
    finally:
        erros.close()


def executar_SQL_resultados(connection, command):
    erros = open('erros.txt', 'a')
    cursor = connection.cursor()

    try:
        cursor.execute(command)
        return cursor.fetchall()
    except Exception as err:
        erros.write('%s \n %s \n\n' % (command, err.message))
        return None
    finally:
        erros.close()


def criar_schema(competencia, connection):
    command = 'DROP SCHEMA IF EXISTS cnes_%s CASCADE;' % competencia
    executar_SQL(connection, command)

    command = 'CREATE SCHEMA cnes_%s AUTHORIZATION postgres;' % competencia
    executar_SQL(connection, command)

    command = """
    CREATE TABLE IF NOT EXISTS cnes_%s.rl_estab_equipamento (
    co_unidade character varying(31) NOT NULL,
    co_equipamento character(2) NOT NULL,
    co_tipo_equipamento character(1) NOT NULL,
    qt_existente numeric(3,0),
    qt_uso numeric(3,0),
    tp_sus character(1),
    dt_atualizacao character varying(255) NOT NULL,
    co_usuario character varying(12) NOT NULL,
    dt_atualizacao_origem date,
    dt_cmtp_inicio date,
    dt_cmtp_fim date,
    nu_seq_processo numeric(8,0)
);

    ALTER TABLE cnes_%s.rl_estab_equipamento OWNER TO postgres;

    COMMENT ON TABLE cnes_%s.rl_estab_equipamento IS 'EQUIPAMENTOS';
    
    
    --
    -- Name: COLUMN cnes_%s.rl_estab_equipamento.co_unidade; Type: COMMENT; Schema: public; Owner: postgres
    --
    
    COMMENT ON COLUMN cnes_%s.rl_estab_equipamento.co_unidade IS 'Código do Estabelecimento de Saúde';
    
    
    --
    -- Name: COLUMN cnes_%s.rl_estab_equipamento.co_equipamento; Type: COMMENT; Schema: public; Owner: postgres
    --
    
    COMMENT ON COLUMN cnes_%s.rl_estab_equipamento.co_equipamento IS 'Código do Equipamento';
    
    
    --
    -- Name: COLUMN cnes_%s.rl_estab_equipamento.co_tipo_equipamento; Type: COMMENT; Schema: public; Owner: postgres
    --
    
    COMMENT ON COLUMN cnes_%s.rl_estab_equipamento.co_tipo_equipamento IS 'Código do Tipo de Equipamento';
    
    
    --
    -- Name: COLUMN cnes_%s.rl_estab_equipamento.qt_existente; Type: COMMENT; Schema: public; Owner: postgres
    --
    
    COMMENT ON COLUMN cnes_%s.rl_estab_equipamento.qt_existente IS 'Quantidade de Equipamentos Existentes';
    
    
    --
    -- Name: COLUMN cnes_%s.rl_estab_equipamento.qt_uso; Type: COMMENT; Schema: public; Owner: postgres
    --
    
    COMMENT ON COLUMN cnes_%s.rl_estab_equipamento.qt_uso IS 'Quantidade de Equipamentos em Uso';
    
    
    --
    -- Name: COLUMN cnes_%s.rl_estab_equipamento.tp_sus; Type: COMMENT; Schema: public; Owner: postgres
    --
    
    COMMENT ON COLUMN cnes_%s.rl_estab_equipamento.tp_sus IS 'Indica se o Equipamento está disponível para o SUS.
    1 - Sim
    2 - Não';
    
    
    --
    -- Name: COLUMN cnes_%s.rl_estab_equipamento.dt_atualizacao; Type: COMMENT; Schema: public; Owner: postgres
    --
    
    COMMENT ON COLUMN cnes_%s.rl_estab_equipamento.dt_atualizacao IS 'Data da Última Atualização do Registro';
    
    
    --
    -- Name: COLUMN cnes_%s.rl_estab_equipamento.co_usuario; Type: COMMENT; Schema: public; Owner: postgres
    --
    
    COMMENT ON COLUMN cnes_%s.rl_estab_equipamento.co_usuario IS 'Último Usuário que atualizou o Registro';
    
    
    --
    -- Name: COLUMN cnes_%s.rl_estab_equipamento.dt_atualizacao_origem; Type: COMMENT; Schema: public; Owner: postgres
    --
    
    COMMENT ON COLUMN cnes_%s.rl_estab_equipamento.dt_atualizacao_origem IS 'Data da Primeira entrada no Banco de Produção Federal';
    
    
    --
    -- Name: COLUMN cnes_%s.rl_estab_equipamento.dt_cmtp_inicio; Type: COMMENT; Schema: public; Owner: postgres
    --
    
    COMMENT ON COLUMN cnes_%s.rl_estab_equipamento.dt_cmtp_inicio IS 'Data da Primeira entrada ou Data do Retorno no Banco de Produção Federal';
    
    
    --
    -- Name: COLUMN cnes_%s.rl_estab_equipamento.dt_cmtp_fim; Type: COMMENT; Schema: public; Owner: postgres
    --
    
    COMMENT ON COLUMN cnes_%s.rl_estab_equipamento.dt_cmtp_fim IS 'Data Final de Competência';
    
    
    --
    -- Name: COLUMN cnes_%s.rl_estab_equipamento.nu_seq_processo; Type: COMMENT; Schema: public; Owner: postgres
    --
    
    COMMENT ON COLUMN cnes_%s.rl_estab_equipamento.nu_seq_processo IS 'Número do Processo da Última Carga';

    """ % competencia
    executar_SQL(connection, command)
    print "Tabeal de relação de equipamentos criada"


def conectarBD(dbname, user, host, password, port='5432'):
    print 'Conectando ao BD %s...(%s porta:%s)\n' % (dbname, host, port)
    # conecta ao BD e retorna a conexao criada
    return psycopg2.connect("dbname=%s user=%s host=%s password=%s port=%s" % (
                            dbname, user, host, password, port))

