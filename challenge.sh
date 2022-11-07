#!/bin/bash

admusers=("carlos" "maria" "joao")
venusers=("debora" "sebastiana" "roberto")
secusers=("josefina" "amanda" "rogerio")

directories=("publico" "adm" "ven")
for pasta in ${directories[@]};do
  mkdir /$pasta -v;
  done
  
grupos=("GRP_ADM" "GRP_VEN" "GRP_SEC")
for grupo in ${grupos[@]};do
  #addgroup ${grupo} --force-badname;
  addgroup --shell /bin/bash ${grupo} --force-badname;
  done
  
 chmod 777 publico
 usermod -a -G docker userEx.
