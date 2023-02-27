## PROBLEMA
El problema de la activdad era que al momento de cargar una URL especifica se obtiene un error 404. 

## SOLUCION
La solución a este problema consiste en que react.js maneja todas las rutas en index.js, lo que debemos hacer es cargar el archvio raíz (Que generalmente es index.html), para que todas las rutas que no coincidan, de modo que nginx envíe el archivo  y la ruta sea manejada por react. 

Lo primero que debemos hacer es crear una carpeta llamada nginx y dentro de ella un archivo **nginx.conf**, dentro del archivo debemos colocar el siguiente codigo 

```
server {
    listen 80;
    location /{
        root /usr/share/nginx/html;
        index index.html index.htm;
        try_files $uri $uri/ /index.html;
    }
}
```

Al agregar esto a nuestro config. Enrutará todas las solicitudes al archivo index.html.

Posterior al cambio en el .config debemos copiar esta configuración en nuestra imagen de docker en el archivo **DOCKERFILE**

Colocando el siguiente código luego de indicar nuestra imagen de nginx

```
RUN rm /etc/nginx/conf.d/default.conf
COPY nginx/nginx.conf /etc/nginx/conf.d
```

