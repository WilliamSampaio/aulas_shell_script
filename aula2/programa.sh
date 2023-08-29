#!/usr/bin/env bash

clear # limpa a tela
echo "Bem-vindo ao MetaForm, seus dados estão seguros!"

sleep 5s # pausa por 5 segundos

echo -e "\nNome de usuário: $USER"
echo "Sua HOME Pessoal é: $HOME"
echo -e "O Shell Utilizado é: $SHELL\n"

read -p "Nome completo: " nome
read -p "Idade: " idade
read -p "Endereço: " endereco
read -p "Telefone: " telefone
read -p "Escolaridade: " escolaridade
read -p "Profissão: " profissao

echo -e "\nNOME: $nome"
echo "IDADE: $idade"
echo "ENDEREÇO: $endereco"
echo "TELEFONE: $telefone"
echo "ESCOLARIDADE: $escolaridade"
echo -e "PROFISSÃO: $profissao\n"

read -p "Todos os seus dados estão corretos? [S/N] " option
echo $option