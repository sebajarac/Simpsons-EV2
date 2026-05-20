Tarea Automatización - Consumo de API de Los Simpson
Este proyecto consiste en una aplicación de Python automatizada dentro de un contenedor Docker que consume la API pública y gratuita de Los Simpson para obtener citas célebres de los personajes de Springfield de forma dinámica.

Componentes del Proyecto
app.py: Script principal en Python que realiza la petición HTTP a la API, procesa la respuesta en formato JSON y despliega los datos en pantalla.
requirements.txt: Archivo de dependencias que define la utilización de la librería requests.
Dockerfile: Archivo de configuración para la construcción de la imagen automatizada basada en python:3.9-slim.
build.sh: Script en Bash para automatizar el ciclo de compilación, limpieza y ejecución del contenedor de manera local.

Instrucciones de Ejecución Local
Para levantar este proyecto en tu máquina con Docker, ejecuta los siguientes comandos en tu terminal dentro de la carpeta del proyecto:

```bash
Construir la imagen Docker
docker build -t simpson-app .

Ejecutar el contenedor
docker run --name simpsonrunning simpson-app