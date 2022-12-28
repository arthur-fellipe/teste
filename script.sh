#!/bin/bash

#Descomprime a pasta primeira.zip
unzip primeira.zip
echo "Pasta descomprimida com sucesso!"

#Cria pasta com novo tema na estrutura
mkdir primeira/Easter
echo "Pasta Easter criada com sucesso!"

#Cria pastas com novos anos dentro da pasta Easter
mkdir primeira/Easter/2008 primeira/Easter/2010
echo "Pastas 2008 e 2010 criadas com sucesso!"

#Lista ficheiros na pasta primeira/Harry Potter/2004/Knight Bus - Mini
echo "Ficheiros na pasta Knight Bus - Mini: "
ls -l primeira/Harry\ Potter/2004/Knight\ Bus\ -\ Mini
echo " "

#Exibe conteúdo do ficheiro Bricks
echo "Ficheiro Bricks:"
cat primeira/Harry\ Potter/2004/Knight\ Bus\ -\ Mini/Bricks
echo " "

#Mescla conteúdo de todos os ficheiros da pasta primeira/Harry Potter/2004/Knight Bus - Mini
cat primeira/Harry\ Potter/2004/Knight\ Bus\ -\ Mini/Bricks primeira/Harry\ Potter/2004/Knight\ Bus\ -\ Mini/Plates primeira/Harry\ Potter/2004/Knight\ Bus\ -\ Mini/Wheels\ and\ Tyres > primeira/Harry\ Potter/2004/Knight\ Bus\ -\ Mini/Pecas
echo "Ficheiros na pasta Knight Bus - Mini mesclados com sucesso!"

#Exibe conteúdo do ficheiro Peças
echo "Ficheiro Peças:"
cat primeira/Harry\ Potter/2004/Knight\ Bus\ -\ Mini/Pecas
echo " "

#Conta o número de caracteres do ficheiro Peças
echo "Número de caracteres do ficheiro Peças: "
wc -m primeira/Harry\ Potter/2004/Knight\ Bus\ -\ Mini/Pecas
echo " "

#Exibe conteúdo do ficheiro Peças em ordem alfabética descendente
echo "Ficheiro Peças em ordem alfabética descendente: "
sort -r primeira/Harry\ Potter/2004/Knight\ Bus\ -\ Mini/Pecas
echo " "

#Apaga ficheiros da pasta primeira/Harry Potter/2004/Knight Bus - Mini
rm primeira/Harry\ Potter/2004/Knight\ Bus\ -\ Mini/Bricks primeira/Harry\ Potter/2004/Knight\ Bus\ -\ Mini/Plates primeira/Harry\ Potter/2004/Knight\ Bus\ -\ Mini/Wheels\ and\ Tyres
echo "Ficheiros 'Bricks', 'Plates' e 'Wheels and Tyres' deletados com sucesso!"

#Lista ficheiros na pasta primeira/Harry Potter/2004/Knight Bus - Mini
echo "Ficheiros na pasta Knight Bus - Mini: "
ls -l primeira/Harry\ Potter/2004/Knight\ Bus\ -\ Mini
echo " "

#Comprime a pasta primeira/ modificada
zip -r segunda.zip primeira/
echo "Pasta comprimida com sucesso!"
