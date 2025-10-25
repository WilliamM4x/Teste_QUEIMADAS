```markdown
# 🔥 Teste Técnico – Projeto DescrEVE Fogo / Programa Queimadas

## 🧭 Objetivo
Reproduzir, em ambiente local, uma operação central do sistema **DescrEVE Fogo**:  
a **formação de frentes de fogo** a partir de um conjunto de focos de calor.

O teste avalia a capacidade de trabalhar com dados espaciais, consultas SQL e lógica de agrupamento no **PostgreSQL/PostGIS**.

---

## 🧰 Requisitos
- **PostgreSQL 14** ou superior  
- **Extensão PostGIS** habilitada  
- Sistema operacional: **Windows**, **Linux** ou **macOS**

---

## ⚙️ Passos para execução

1. **Criar o banco e as tabelas**
   - Execute o script abaixo no seu PostgreSQL:
     ```bash
     psql -U postgres -f setup.sql
     ```

2. **Importar o conjunto de focos**
   - No terminal `psql`, rode:
     ```sql
     \COPY evento_fogo_teste.focos (id_foco_bdq, data_hora_gmt, longitude, latitude, satelite, frp, bioma, uf, municipio, geom)
     FROM 'focos_teste.csv'
     DELIMITER ',' CSV HEADER;
     ```

3. **Atualizar a geometria**
   Caso o campo `geom` não esteja preenchido automaticamente:
   ```sql
   UPDATE evento_fogo_teste.focos
   SET geom = ST_SetSRID(ST_GeomFromText(wkt_geom), 4674);
```

4. **Popular tabela de frentes de fogo**
   - Execute o script abaixo no seu PostgreSQL:
     ```bash
     psql -U postgres -f formar_frentes_exemplo.sql
     ```
