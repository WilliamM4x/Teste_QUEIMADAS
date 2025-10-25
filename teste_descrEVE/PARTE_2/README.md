## JUSTIFICATIVA
 <p align="justify">
   Há incidência de queimadas e incêndiso é uma realidade no nosso país, garantir a rastreabilidade destes eventos e mapea-los gera farramentas para tomada de desições a despeito destes eventos que geram
grandes impactos sociais e ambientais.
 </p> 

## OBJETIVOS
  <p align="justify">
    Hoje o projeto queimadas tem disponível uma série de dados climáticos possibilitando inferir sobre a qualidade do ar de municípios do país, além de dados de ocorrências de pontos de calor (registro de queimadas e/ou incêndios).
Um dos parâmetros considerados na qualidade do ar são as micropartículas de diâmetro de menos que 2,5 micrômetros, são resíduos particulados de materiais químicos, líquidos, sólidos etc., que dada a dimensão e dispersão no ar 
podem circular no sistema respiratório e gerar complicação. Nesta investigação mais simplória esperamos identificar algum padrão de relação entre o aumento de ocorrências de focos de calor e a diminuição da qualidade do ar.
  </p>
## METODOLOGIA
  <p align="justify">
    Para análise utilizamos a linguagem de programação Python e as bibliotecas Pandas, GeoPandas e Matplotlib. As bibliotecas Pandas e GeoPandas servem para manipulação e filtragem dos dados, em especial a GeoPandas que lida especialmente
com consultas geoespaciais, funciona basicamente como a Pandas exceto pela coluna Geometry com as informações do mapa no que se chama GeoDataFrame. A Matplotlib nos serviu para graficar os resultados e dados a fim de facilitar a análise.
Para análise tomamos como referências a qualidade do ar do Distrito Federal nos anos de 2019 e 2018 e os focos de calor para os mesmos anos nos mesmos estados e sua região metropolitana que contém 10 municípios do estado de Goiás. 
A respeito dos dados de focos de calor disponíveis são utilizados dados do stélite e todos os satélites disponíveis, filtrando os focos advindos de áreas industriais, como também um filtro para os dados do satélite de referência ().
  </p>
  
## ANÁLISE
  <p>
     Como ponto de pártida foi gráficado o valor diario de PM2.5 por dia durante o ano a fim de identificar périodos com aumento do particulado na região, imagens abaixo.
  </p>
  
  <p align="center">
    <img src="teste_descrEVE/PARTE_2/Gráficos/grafico_pm25_temporal_2018.png" alt="Gráfico PM25 ano 2018" width="600">
  </p>
  
  <p>
    Aqui é evidente um aumento de dias com baixa qualidade do ar entre os meses de julho e início de dezembro. Dada quantidade de dados para melhor entender a dinâmica da qualidade do ar neste ano uma alternativa é visualizar a média mensal, veja a seguir.
  </p>
  
   <p align="center">
    <img src="teste_descrEVE/PARTE_2/Gráficos/grafico_pm25_media_mensal_2018.png" alt="Gráfico PM25 ano 2018" width="600">
  </p>
  
  <p>
    Fica evidente o pico de pior qualidade do ar no périodo de ****. Análisando os histogramas de contagem de focos não so em Brasília, bem como, em sua região metropolitana seja apenas com o stélite referência ou todos disponiveis no dbqueimadas fica claro que há também um volume considerável de focos no mesmo périodo, veja a seguir. 
  </p>
  
   <p align="center">
    <img src="teste_descrEVE/PARTE_2/Gráficos/grafico_pm25_media_mensal_2018.png" alt="Gráfico PM25 ano 2018" width="600">
  </p>


 
  
