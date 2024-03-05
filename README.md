#TP_Entorno
##AUTOR: Taiel Raffaelli, estudiante de la carrera de tecnicatura de programación en IA en la Facultad de Ciencias Exactas, Ingeniería y Agrimensura.
##Trabajo práctico de entorno de programación
###INTRO
Se realizó una app CLI. Esta cuenta con un menú general interactivo con el usuario que permite seleccionar un conjunto de opciones de mini-apps de análisis de texto. Cada mini-app analiza un archivo de texto y devuelve ciertos valores.

###MINI-APPS
####1. statsWords.sh
Indicador estadístico de longitud de palabras (la más corta, la más larga y el promedio de longitud).

####2. statsUsageWords.sh
Indicador estadístico de uso de palabras, deben tener al menos 4 (cuatro) letras. (mostrar un Top Ten de estas palabras ordenadas desde la que tiene más apariciones a la que tiene menos). Es decir, filtrar las palabras que tengan al menos 4 letras y de éstas, elegir las 10 más usadas.

####3. findNames.sh
Identificación de nombres propios (se identifican sólo si están en este formato Nnnnnnnnn), aunque la palabra no sea un nombre propio realmente. Ejemplos: Mateo, EstoNoEsUnNombre, Ana.

####4. statsSentences.sh
Indicador estadístico de longitud de oraciones (la más corta, la más larga y el promedio de longitud).

####5. blankLinesCounter.sh
Contador de líneas en blanco.

###MODO DE USO
Una vez obtenido el acceso al repositorio en GitHub, se debe descargar los archivos y ponerlos en una misma carpeta sin otros archivos anteriores.

Luego debe montar una imagen con el comando "docker build -t entorno .", esto creará una imagen con las instrucciones que tiene el Dockerfile y permitirá utilizar la app.

Una vez montada la imagen deberá correrla con el siguiente comando "docker run -it entorno", esto iniciará la imagen creada y ejecutará el menú de inicio de la app.

###HERRAMIENTAS UTILIZADAS
En este proyecto se utilizaron las herramientas:

- GIT: para el guardado de versiones de la app durante su desarrollo.

- Docker: para tener acceso a la app desde cualquier sistema operativo.

- BASH: para interpretar los códigos de los scripts de la app.
