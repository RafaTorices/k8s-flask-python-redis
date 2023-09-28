#Ejemplo de Dockerfile para crear una imagen de Docker con una aplicación Flask python
# python:3.7-alpine es una imagen de Docker que contiene Python 3.7 y Alpine Linux
# Requiere de un archivo requirements.txt con las dependencias de Python
# Además requiere de un archivo app.py con el código de la aplicación Flask en la carpeta code de nuestro proyecto
# Instala mediante RUN apk add gcc musl-dev linux-headers curl las dependencias necesarias para instalar las dependencias de Python
FROM python:3.7-alpine
# Instala los paquetes necesarios para instalar las dependencias de Python
RUN apk add gcc musl-dev linux-headers curl
# Crea el directorio /app y copia los archivos requirements.txt y app.py
WORKDIR /app
# Copia los archivos requirements.txt y app.py a ./ en el contenedor
COPY ./code/* ./
# Instala las dependencias de Python definidas en requirements.txt
RUN pip install -r requirements.txt
# Expone el puerto 5000 de redis para la app Flask
EXPOSE 5000
# Define las variables de entorno para la app Flask
ENV FLASK_APP=app.py
ENV FLASK_RUN_HOST=0.0.0.0
ENV FLASK_RUN_PORT=5000
ENV REDIS_HOST=redis
# Ejecuta la app Flask
CMD flask run
