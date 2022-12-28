#!/bin/bash


# mkdir estrutura_teste
# paste -d'/' teste.txt teste_anos.txt > resultado.txt
# paste -d'/' teste.txt teste_anos.txt teste_conjuntos.txt > resultado_conjuntos.txt

mkdir estrutura_completa

cut -f4 sets.tsv > temas.txt 
cut -f3 sets.tsv > anos.txt
cut -f2 sets.tsv > conjuntos.txt
cut -f1 sets.tsv > set_num.txt

paste -d'/' temas.txt anos.txt > temas_anos.txt
paste -d'/' temas.txt anos.txt conjuntos.txt > temas_anos_conjuntos.txt
# | sed -i 's/ /\\ /g' temas.txt

IFS=;
# while  read -r linha;
# do
#     if [ "$linha" != "theme" -a "$linha" != "year" ];
#     then
#         mkdir estrutura_teste/$linha
#     fi
# done < teste.txt

# while  read -r linha;
# do
#     if [ "$linha" != "theme/year" ];
#     then
#         mkdir estrutura_teste/$linha
#     fi
# done < resultado.txt

# while  read -r linha;
# do
#     if [ "$linha" != "theme/year/name" ];
#     then
#         mkdir estrutura_teste/$linha
#     fi
# done < resultado_conjuntos.txt

while read -r linha;
do
  if [ "$linha" != "theme" ];
   then
    mkdir estrutura_completa/$linha
   fi
done < temas.txt

while  read -r linha;
do
    if [ "$linha" != "theme/year" ];
    then
        mkdir estrutura_completa/$linha
    fi
done < temas_anos.txt

while  read -r linha;
do
    if [ "$linha" != "theme/year/name" ];
    then
        mkdir estrutura_completa/$linha
    fi
done < temas_anos_conjuntos.txt

# APAGAR ARQUIVOS TXT