#!/bin/bash
# Script de automatización local - Indicadores Económicos Chilenos

echo "========================================="
echo "Iniciando proceso de Automatización..."
echo "========================================="

# 1. Limpieza de contenedores anteriores para evitar conflictos de nombre
echo "-> Limpiando entorno Docker..."
docker stop simpsonrunning 2>/dev/null || true
docker rm -f simpsonrunning 2>/dev/null || true

# 2. Construcción de la nueva imagen Docker
echo "-> Compilando imagen simpson-app..."
docker build -t simpson-app .

# 3. Ejecución del contenedor en vivo consumiendo la API Financiera
echo "-> Levantando contenedor simpsonrunning..."
echo "========================================="
docker run --name simpsonrunning simpson-app
echo "========================================="
