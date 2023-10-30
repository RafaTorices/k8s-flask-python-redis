# Ejercicio simulacion proyecto k8s
# Despliegue de una aplicación flask de Python con redis en kubernetes
### Rafael Torices

**_Requisitos:_**
Desplegar un configmap con los datos del redis host.
Hacer persistente el almacenamiento en redis mediante el uso de volumes.

**_Ejecución:_**
Desplegar todos los ficheros yaml mediante el comando:
kubectl apply -f .

**_Comprobación:_**

Para comprobar que se ha desplegado correctamente, ejecutar el comando:
`kubectl get all`


Hacer un port-forward hacia un pod de la aplicación:
`kubectl port-forward <pod> 5000:5000`


Comprobar que la aplicación funciona correctamente en la url:
`http://localhost:5000`


O mediante el comando:
`curl http://localhost:5000`

