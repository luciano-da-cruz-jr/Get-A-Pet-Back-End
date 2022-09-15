#!/bin/bash

# Baixa a imagem
docker pull mongo

# Remove o container, se existir
docker stop getapet
docker container rm getapet

# Gera o container
docker run --name getapet -p 27017:27017 -e AUTH=no -d mongo 
