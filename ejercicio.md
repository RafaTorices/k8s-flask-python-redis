# Ejercicio simulacion proyecto k8s
# Despliegue de una aplicación flask con redis en kubernetes
# Ejercicio de clase de KeepCoding

### Eduardo González de la Herrán
### Rafael Torices

Desplegar en Kuberentes el flask counter con redis.

Os entrego una versión simple del código y un Dockerfile. Podéis utilizarlos sin necesidad de mejorarlos para el ejercicio.

Si queréis podéis utilizar vuestro código ya mejorado y con más variables de entorno, o utilizar el que conecta a un MySQL.

Pasos previos:
1 - Construye la imagen (docker build)
2 - Súbela a docker hub (docker login y docker push)

Ejercicio:

Crea los manifiestos de kubernetes en el directorio k8s para desplegar todo lo necesario:

- Redis en un statefulset de 1 sola replica
- La aplicación en un deployment de 1 réplica (podéis poner más réplicas si queréis)

La configuración de la aplicación para conectar a redis (variable de entorno) hay que introducirla a través de un Secret o ConfigMap.

- ¿Qué servicios habrá que crear?

MEJORA (con persistencia para redis)

- Intentad que redis tenga storage persistente (https://hub.docker.com/_/redis) --> buscad la sección "start with persistent storage", bázicamente hay que:
   - usar como CMD: redis-server --save 60 1 --loglevel warning
   - Montar un disco externo / volumen en /data
