#!/bin/bash

#Descomprime a pasta primeira.zip
unzip primeira.zip
echo "Pasta descomprimida com sucesso!"

#Cria pasta com novo tema na estrutura
mkdir primeira/Easter
echo "Pasta criada com sucesso!"

#Cria pastas com novos anos dentro da pasta Easter
mkdir primeira/Easter/2008 primeira/Easter/2010
echo "Pastas criadas com sucesso!"

#Lista ficheiros na pasta primeira/Harry Potter/2004/Knight Bus - Mini
ls primeira/Harry\ Potter/2004/Knight\ Bus\ -\ Mini

#Exibe conteúdo do ficheiro Bricks
cat primeira/Harry\ Potter/2004/Knight\ Bus\ -\ Mini/Bricks

#Mescla conteúdo de todos os ficheiros da pasta primeira/Harry Potter/2004/Knight Bus - Mini
cat primeira/Harry\ Potter/2004/Knight\ Bus\ -\ Mini/Bricks primeira/Harry\ Potter/2004/Knight\ Bus\ -\ Mini/Plates primeira/Harry\ Potter/2004/Knight\ Bus\ -\ Mini/Wheels\ and\ Tyres > primeira/Harry\ Potter/2004/Knight\ Bus\ -\ Mini/Pecas
echo "Ficheiros mesclados com sucesso!"

#Exibe conteúdo do ficheiro Peças
cat primeira/Harry\ Potter/2004/Knight\ Bus\ -\ Mini/Pecas

#Conta o número de caracteres do ficheiro Peças
echo "Número de caracteres: "
wc -m primeira/Harry\ Potter/2004/Knight\ Bus\ -\ Mini/Pecas

#Exibe conteúdo do ficheiro Peças em ordem alfabética descendente
sort -r primeira/Harry\ Potter/2004/Knight\ Bus\ -\ Mini/Pecas

#Apaga ficheiros da pasta Harry Potter
rm primeira/Harry\ Potter/2004/Knight\ Bus\ -\ Mini/Bricks primeira/Harry\ Potter/2004/Knight\ Bus\ -\ Mini/Plates primeira/Harry\ Potter/2004/Knight\ Bus\ -\ Mini/Wheels\ and\ Tyres > primeira/Harry\ Potter/2004/Knight\ Bus\ -\ Mini/Pecas
echo "Ficheiros deletados com sucesso!"

#Lista ficheiros na pasta primeira/Harry Potter/2004/Knight Bus - Mini
ls primeira/Harry\ Potter/2004/Knight\ Bus\ -\ Mini

#Comprime a pasta primeira/ modificada
zip -r segunda.zip primeira/
echo "Pasta comprimida com sucesso!"
