#!/bin/bash
# Script de automatización local - Indicadores Económicos Chilenos

echo "========================================="
echo "Iniciando proceso de Automatización..."
echo "========================================="

# 1. Limpieza de contenedores anteriores para evitar conflictos de nombre
echo "-> Limpiando entorno Docker..."
docker stop indicadores-running 2>/dev/null || true
docker rm -f indicadores-running 2>/dev/null || true

# 2. Construcción de la nueva imagen Docker corporativa
echo "-> Compilando imagen indicadores-app..."
docker build -t indicadores-app .

# 3. Ejecución del contenedor en vivo consumiendo la API Financiera
echo "-> Levantando contenedor indicadores-running..."
echo "========================================="
docker run --name indicadores-running indicadores-app
echo "========================================="
