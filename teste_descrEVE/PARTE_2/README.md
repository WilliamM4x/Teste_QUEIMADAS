## JUSTIFICATIVA
 <p align="justify">
   Há incidência de queimadas e incêndios, o que é uma realidade no nosso país. Garantir a rastreabilidade desses eventos e mapeá-los gera ferramentas para a tomada de decisões diante desses acontecimentos, que causam grandes impactos sociais e ambientais.
 </p> 

## OBJETIVOS
  <p align="justify">
   Atualmente, o projeto Queimadas-INPE dispõe de uma série de dados climáticos que permitem inferir sobre a qualidade do ar em municípios do país, além de dados sobre ocorrências de pontos de calor (registro de queimadas e/ou incêndios). Um dos parâmetros considerados na qualidade do ar são as micropartículas com diâmetro menor que 2,5 micrômetros (PM2.5). São resíduos particulados de materiais químicos, líquidos, sólidos, etc., que, devido à dimensão e dispersão no ar, podem circular pelo sistema respiratório e causar complicações. Nesta investigação mais simplificada, esperamos identificar algum padrão de relação entre o aumento das ocorrências de focos de calor e a diminuição da qualidade do ar. 
  </p>
  
## METODOLOGIA
  <p align="justify">
   Para a análise, utilizamos a linguagem de programação Python e as bibliotecas Pandas, GeoPandas e Matplotlib. As bibliotecas Pandas e GeoPandas são utilizadas para manipulação e filtragem dos dados; em especial, a GeoPandas lida com consultas geoespaciais, funcionando basicamente como a Pandas, exceto pela coluna Geometry, que contém as informações do mapa no que se chama GeoDataFrame. A Matplotlib foi usada para gerar gráficos dos resultados, facilitando a análise. Como referência para a análise, consideramos a qualidade do ar do Distrito Federal nos anos de 2018 e 2019 e os focos de calor para esses mesmos anos, nos mesmos estados e sua região metropolitana, que inclui 10 municípios do estado de Goiás. Os dados de focos de calor disponíveis são provenientes de satélites, incluindo todos os satélites disponíveis no dbqueimadas, com filtragem dos focos originados em áreas industriais e um filtro específico para os dados do satélite de referência (Aqua Tarde).
  </p>
  
## ANÁLISE
  <p>
   Como ponto de partida, foi plotado o valor diário de PM2.5 durante o ano, para identificar períodos com aumento das partículas na região e direcionar a análise para possíveis períodos de interesse (imagens abaixo).
  </p>
  
   <p align="center">
     <img width="1000" height="700" alt="Image" src="https://github.com/user-attachments/assets/a3d89146-a3e7-47cd-b496-e24b8a737210" />
  </p>
  
  <p>
    No gráfico, a legenda de cores está omitida; portanto, informo que a cor verde está associada à qualidade do ar boa, amarela à moderada, azul à ruim, vermelha à muito ruim e roxa à péssima, conforme a classificação do SISAN-Queimadas. É evidente o aumento de dias com baixa qualidade do ar entre julho e o início de dezembro. Para melhor visualizar a dinâmica da qualidade do ar neste ano, apresenta-se a média mensal a seguir. 
  </p>

   <p align="center">
    <img width="1000" height="700" alt="Image" src="https://github.com/user-attachments/assets/10a28dfa-d533-4f97-b480-a80293e23115" />
  </p>
  
  <p>
    A média mensal reduz o ruído visual, evidenciando a piora da qualidade do ar no período entre agosto e novembro. Ao analisar os histogramas de contagem dos focos, tanto em Brasília quanto em sua região metropolitana, seja apenas com o satélite de referência ou com todos os disponíveis no dbqueimadas, fica claro que há um volume considerável de focos no mesmo período (veja a seguir). 
  </p>
  
   <p align="center">
   <img width="1014" height="659" alt="Image" src="https://github.com/user-attachments/assets/6c64071a-2ef6-478b-b3ad-e3e81bce20b0" />
  </p>

 <p>
  Portanto, há, de fato, relação entre os focos de calor e a piora na qualidade do ar. Possivelmente, esse aumento dos particulados está associado aos produtos resultantes das queimadas, que podem ser transportados por massas de ar/ventos — fato que motivou a observação não só do Distrito Federal (DF), mas também do seu entorno. A seguir, apresenta-se o mapa da região metropolitana considerando o FRP dos focos de calor e suas localizações.
 </p> 
 
 <p align="center">
 <img width="836" height="753" alt="Image" src="https://github.com/user-attachments/assets/83ae7608-cb40-4adc-a862-a8a12a448c97" />
 </p>

 <p>
  No mapa acima, é possível ver que quase todos os municípios apresentaram focos de calor, numa distribuição bastante dispersa; destaca-se que as maiores intensidades ocorrem a leste do DF. Até aqui, é visível a associação entre número de focos e piora da qualidade do ar. Contudo, é importante validar essa hipótese em outros períodos; para isso, vejamos a qualidade do ar no ano de 2019.
 </p>

  <p align="center">
 <img width="1000" height="700" alt="Image" src="https://github.com/user-attachments/assets/7f4f685c-5040-412f-9f1a-d453b6b0ed96" />
 </p>
   
<p>
  Diferentemente de 2018, em 2019 as variações diárias estão mais próximas da categoria ruim. Observa-se que a nuvem de dados não permite ver claramente a faixa vermelha, como ocorre em 2018, o que indica uma média anual melhor. Outro ponto importante é que não se vê um acúmulo de dias com pior qualidade no mesmo período citado em 2018. Vejamos a média mensal deste ano.
 </p>

 <p align="center">
<img width="1000" height="700" alt="Image" src="https://github.com/user-attachments/assets/4fa99be0-9f19-4b84-905c-58c2cf8480e8" />
 </p>

<p>
  Analisando o gráfico da média mensal da qualidade do ar em 2019, confirmam-se as expectativas anteriores; observa-se inclusive a mudança do período de piora da qualidade do ar, agora entre fevereiro e junho. Partindo da hipótese que desejamos verificar, espera-se que, entre esses meses, haja mais focos de calor. A seguir, veja o histograma de focos de calor de 2019.
 </p>

 <p align="center">
<img width="1014" height="659" alt="Image" src="https://github.com/user-attachments/assets/6c64071a-2ef6-478b-b3ad-e3e81bce20b0" />
 </p>

 <p>
  Diferentemente do esperado, o aumento de focos permanece no período similar a 2018, e não entre fevereiro e junho. Portanto, outros fatores além das queimadas e incêndios podem influenciar a qualidade do ar. Mesmo com menor expressividade, há um pico na piora da qualidade do ar nos meses em que houve aumento de focos de calor — observe a qualidade do ar em setembro, coincidente com o pico de focos entre agosto e setembro. Como outros fatores também precisam ser analisados, veja o mapa de focos e suas intensidades no ano de 2019 na mesma região.
 </p>

  <p align="center">
<img width="833" height="758" alt="Image" src="https://github.com/user-attachments/assets/40954ad5-6aed-422c-b7ee-3534cf5bf81c" />
 </p>

 <p>
  Em 2019, a configuração dos focos é completamente distinta de 2018. É possível identificar agrupamentos de focos, especialmente nos municípios de Formosa e Planaltina, e o FRP atinge valores maiores que no ano anterior. Neste ano, assim como em 2018, Formosa teve focos com alta intensidade, mas o pico ocorreu em Cocalzinho. 
 </p>

## CONCLUSÃO

 <p>
  Há, sim, uma relação entre o aumento dos focos de calor e a qualidade do ar, visto que, como esperado, a combustão resulta em resíduos. Contudo, esse indicador não deve ser o único. A localização dos focos, ventos, precipitação e intensidade dos focos podem fornecer padrões adicionais para a qualidade do ar em uma região. Desde já, peço desculpas pela escala do gráfico da média mensal da qualidade do ar de 2018, pois houve um problema ao exportar, mas isso não compromete a análise.
 </p>

 ## ANEXO 
  <p>
   Os arquivos de dados para execução do notebook estão zipados e serão enviados por e-mail.
  </p>
  <p>
 Deixo como anexo os gráficos da qualidade anual, mostrando os valores máximos de microgramas por metro cúbico.
 </p>

  <p align="center">
<img width="1000" height="700" alt="Image" src="https://github.com/user-attachments/assets/580919fd-4c90-4bc7-a065-25ec249a23a9" />

<img width="1000" height="700" alt="Image" src="https://github.com/user-attachments/assets/964c7185-f7d4-42c6-bb95-c6a58eddcf0a" />

 </p>



 
  
