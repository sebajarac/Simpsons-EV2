# Evaluación Parcial 2 - Automatización de Procesos

Este proyecto consiste en una aplicación desarrollada en Python y empaquetada en un contenedor Docker, diseñada para consumir de forma automática y dinámica la API pública de indicadores económicos chilenos (`mindicador.cl`). El script procesa la respuesta en formato JSON para extraer y desplegar en consola los valores actualizados de la UF, el Dólar y el Euro.

## Componentes del Proyecto

* **app.py**: Script principal en Python que realiza la petición HTTP GET a la API financiera, parsea el JSON recibido y despliega las métricas comerciales controlando posibles excepciones de red.
* **requirements.txt**: Archivo de dependencias que define la utilización de la librería externa `requests`.
* **Dockerfile**: Archivo de configuración para la construcción de una imagen automatizada y optimizada basada en `python:3.9-slim`.
* **build.sh**: Script de automatización en Bash encargado de gestionar el ciclo de vida local (compilación de la imagen, limpieza de contenedores previos y ejecución del entorno aislado).

## Instrucciones de Ejecución Local

Para compilar y levantar este contenedor de forma nativa mediante la interfaz de línea de comandos (CMD/Terminal), ejecute los siguientes comandos dentro del directorio raíz del proyecto:

```bash
# 1. Detener y limpiar contenedores previos homónimos si existen
docker rm -f simpsonrunning

# 2. Construir la imagen Docker leyendo el archivo de configuración local
docker build -t simpson-app .

# 3. Ejecutar el contenedor definitivo con salida en tiempo real
docker run --name simpsonrunning simpson-app
