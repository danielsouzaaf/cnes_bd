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
    CREATE TABLE IF NOT EXISTS cnes_%s.equipamentos
    (
      cnes character(7) NOT NULL,
      tipequip character(1),
      codequip character(2) NOT NULL,
      qt_exist numeric(4,0),
      qt_uso numeric(4,0),
      ind_sus character(1),
      ind_nsus character(1),
      CONSTRAINT pk_equipam1 PRIMARY KEY (cnes, codequip)
    )
    """ % competencia
    executar_SQL(connection, command)
    print "Schema criado"

    command = """
    CREATE TABLE IF NOT EXISTS cnes_%s.estabelecimentos
    (
      cnes character(7) NOT NULL,
      codufmun character(6),
      regsaude character(4),
      micr_reg character(6),
      distrsan character(4),
      distradm character(4),
      tpgestao character(1),
      pf_pj character(1),
      cpf_cnpj character(14),
      niv_dep character(1),
      cnpj_man character(14),
      esfera_a character(2),
      atividad character(2),
      retencao character(2),
      natureza character(2),
      clientel character(2),
      tp_unid character(2),
      turno_at character(2),
      niv_hier character(2),
      terceiro character(1),
      nat_jur character(4),
      uf character(2),
      CONSTRAINT pk_est1 PRIMARY KEY (cnes)
    )
    """ % competencia
    executar_SQL(connection, command)
    print "Tabela estabelecimentos criada"

    command = """
    CREATE TABLE IF NOT EXISTS cnes_%s.profissionais
    (
      cpf_prof character(11) NOT NULL,
      nomeprof character(150),
      cns_prof character(20),
      conselho character(2),
      registro character(20),
      ufmunres character varying(10),
      idade integer,
      data_nascimento date,
      grupo_idade_id character(1),
      sexo character(1),
      uf_residencia character(2),
      municipio_residencia character varying(100),
      nomeprof_receita character varying(150),
      nome_mae_receita character varying(150),
      raca_id integer,
      qtd_vinculos_ativos integer,
      ch_total_ambulatorial integer,
      ch_total_hospitalar integer,
      ch_total_outros integer,
      ch_total_geral integer,
      ocupacao_principal_uf_id integer,
      ocupacao_principal_uf_sigla character(2),
      ocupacao_principal_id integer,
      CONSTRAINT pk_prof1 PRIMARY KEY (cpf_prof)
    )
    """ % competencia
    executar_SQL(connection, command)
    print "Tabela profissionais criada"

    command = """
    CREATE TABLE IF NOT EXISTS cnes_%s.vinculos
    (
      cnes character(7) NOT NULL,
      cbo character(6) NOT NULL,
      cpf_prof character(11) NOT NULL,
      vinculac character(6) NOT NULL,
      vincul_c character(1),
      vincul_a character(1),
      vincul_n character(1),
      prof_sus character(1),
      profnsus character(1),
      horaoutr numeric(5,0),
      horahosp numeric(5,0),
      hora_amb numeric(5,0),
      familia_cbo character(4),
      ocupacao_id integer,
      CONSTRAINT pk_vinc1 PRIMARY KEY (cpf_prof, cnes, cbo, vinculac)
    )
    """ % competencia
    executar_SQL(connection, command)
    print "Tabela vinculos criada"


def conectarBD(dbname, user, host, password, port='5432'):
    print 'Conectando ao BD %s...(%s porta:%s)\n' % (dbname, host, port)
    # conecta ao BD e retorna a conexao criada
    return psycopg2.connect("dbname=%s user=%s host=%s password=%s port=%s" % (
                            dbname, user, host, password, port))

