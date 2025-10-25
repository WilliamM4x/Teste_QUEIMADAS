```markdown
# 🧩 README_RESPOSTA.md – Teste Técnico DescrEVE Fogo

## 🧠 Lógica adotada
Em geral, são obtidos dados de stélites que informam o timestam, latitude e longitude do evento. É preciso, também, levar em consideração que um incêndio não é pontual, ele alastra-se, em função de fatores climáticos, combustíveis disponíveis etc. Deste modo, a abordagem é extrapolar o ponto de incêndio - coordenada chamada de foco - como uma região definida por um quadrado de 1km^2, acredito que a escolha do formato seja dada à forma de observação e formação de imagens que tem relação com pixels. 
É possível haver mais de um foco na mesma região e/ou em mais de um ponto do mapa no mesmo dia (critério temporal), então, é feito um agrupamento. Para lidar com focos próximos, percebidas as áreas, se sobrepoem, agupasse os mesmos a fim de formar uma região maior. Nas ocorrências em regiões distintas apenas agrupasse as frentes por dia. Posteriormente, é preciso realizar a contagem de focos por região  e também verificar qual foco tem maior intensidade na região.
O resultado é uma tabela contendo as manchas/regiões que são chamadas de frentes de fogo, representadas por polígonos, apresentando as queimadas de cada dia.

---

## ⚙️ Etapas principais
1. É preciso definir o banco com as tabelas frente_fogo_teste.focos que trata-se da extração dos dados de ocorrência de incêndios;
2. Os pontos de incêndio são pontuais, certamente é preciso pensar na acurácia, delay de observação/envio de dados pelos satélites e o avanço do fogo. Então,  Dado que um incêndio não é potual organizaremos eles em regiões chamadas frentes_fogo;
3. Agrupamos os focos por dia e associamos a cada uma região de 1000mX1000m, formando um range (buffer_per_day);
4. É possível que haja regiões que se sobreponham então cira-se um poligono maior (buffer_per_day);
5. Fazemos uma comparação entre a região região e seu dia de ocorrência com os focos e o dia de ocorrecia, então, agrupamos (ordered_fire_fronts);
6. Neste ponto para cada linha há uma região associada, sendo possível realizar a contagem de focos e a intencidade (frp) máxima de cada mancha (ordered_fire_fronts);  
7. Agora agrupamos por dia os poligonos que ocorrem no mapa sobreposto e não sobrepostos (dissolved_fire_fronts);
8.  (INSERT INTO evento_fogo_teste.frente_fogo) - Transformamos cada poligono em uma linha da tabela final (frente_fogo) contendo dia, o polígono, a contagem total de focos daquele dia (SUM(qtd_focos)), máxima frp e a intensidade máxima (MAX(max_frp));

---

## 🧩 Funções PostGIS ou bibliotecas utilizadas

ST_Dump Ao receber uma geometria essa função retorna um novo conjunto de linhas possibilitando a discretização de geometrias (MULTIPOLYGON) em linhas distintas da tabela (POLYGON);
ST_Union Essa função recebe como parâmetro geometrias e então após uma junção resulta em uma nova geometria eliminando sobreposição, ou seja, mantem o contorno exluindo as linhas internas da sobreposição;
ST_Buffer Partindo de um ponto cartesiano expande uma geometria (definida pelo usuário) contendo todos os pontos até uma distância menor ou igual a definida pelo usuário em metros;
ST_Intersects Retorna true ou false para comparação entre duas geometrias verificando se há intersecção entre elas;
Além de funções de agregação padrão do SQL: SUM, MAX.


---

## ✅ Resultados e validação
Número de frentes formadas: 55 frentes
Número total de focos processados: 219 focos
Descrição breve de verificação de coerência geométrica: Não utilizei nenhuma função para verificar a validade dos polígonos, sobretudo, a inspeção visual - dado que não há tantas regiões - não apresenta formação de figuras não poligonais nas regiões. Vide (Map\Frentes.png).  

---

## 🗺️ Exportação 
O shapefile está em: Map.
Projeto QGis: [Map\Peojeto_teste_frentes.qgz](teste_descrEVE/PARTE_1/Map)
---

## 💬 Observações adicionais
(Se desejar, acrescente comentários, dificuldades encontradas ou melhorias que proporia.)
Sei que é uma versão simplificada, gostaria de saber se há algum script que redimensiona a geometria das frentes de fogo levando em consideração também frp maiores, visto que a quantidade de calor será maior, logo, deve-se alastrar com maior facilidade? 

```
