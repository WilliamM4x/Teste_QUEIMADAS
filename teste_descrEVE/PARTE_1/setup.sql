-- ==========================================================
-- SETUP DO TESTE TÉCNICO - PROJETO DESCREVE FOGO
-- ==========================================================
-- Este script cria a estrutura mínima necessária para
-- rodar o teste de formação de frentes de fogo.
-- ==========================================================
SET search_path = public, pg_catalog;
CREATE EXTENSION IF NOT EXISTS postgis;
CREATE SCHEMA IF NOT EXISTS evento_fogo_teste;
SET search_path TO evento_fogo_teste, public, pg_catalog;


-- ------------------------------
-- Tabela de focos de calor
-- ------------------------------
CREATE TABLE focos (
    id_foco_bdq SERIAL PRIMARY KEY,
    data_hora_gmt TIMESTAMP NOT NULL,
    longitude NUMERIC,
    latitude NUMERIC,
    satelite TEXT,
    frp NUMERIC,
    bioma TEXT,
    uf TEXT,
    municipio TEXT,
    geom GEOMETRY(Point, 4674)
);

-- ------------------------------
-- Tabela de frentes de fogo
-- ------------------------------
CREATE TABLE frente_fogo (
    id_frente SERIAL PRIMARY KEY,
    data_inicio DATE,
    data_fim DATE,
    qtd_focos INTEGER,
    max_frp NUMERIC,
    geom GEOMETRY(Polygon, 4674)
);

-- Índices espaciais
CREATE INDEX idx_focos_geom ON focos USING GIST (geom);
CREATE INDEX idx_frente_geom ON frente_fogo USING GIST (geom);
