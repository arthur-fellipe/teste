#!/bin/bash


# mkdir estrutura_teste
# paste -d'/' teste.txt teste_anos.txt > resultado.txt
# paste -d'/' teste.txt teste_anos.txt teste_conjuntos.txt > resultado_conjuntos.txt

mkdir estrutura_completa
IFS=;
cut -f2 sets.tsv > conjuntos.txt
cut -f3 sets.tsv > anos.txt
cut -f4 sets.txt > temas.txt | sed -i 's,/, ,g' temas.txt
# cut -f2 temas.txt > temas2.txt
# cut -f1 sets.tsv > set_num.txt
 sed -i 's,$,/,g' temas.txt

paste -d'/' temas.txt anos.txt  > temas_anos.txt
paste -d'/' anos.txt conjuntos.txt > anos_conjuntos.txt
# paste -d'/' set_num.txt temas.txt anos.txt conjuntos.txt > num_temas_anos_conjuntos.txt
# | sed -i 's/ /\\ /g' temas.txt


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

# while read -r linha;
# do
#   if [ "$linha" != "theme" ];
#    then
#     mkdir estrutura_completa/$linha
#    fi
# done < temas.txt

# while  read -r linha ano;
# do
#     if [ "$linha" != "year" ];
#     then
#         mkdir estrutura_completa/$linha/$ano
#     fi
# done < temas.txt anos.txt

# while  read -r linha;
# do
#     if [ "$linha" != "theme/year" ];
#     then
#         mkdir estrutura_completa/$linha
#     fi
# done < temas_anos.txt

# while  read -r linha;
# do
#     if [ "$linha" != "theme/year/name" ];
#     then
#         mkdir estrutura_completa/$linha
#     fi
# done < temas_anos_conjuntos.txt

# APAGAR ARQUIVOS TXT