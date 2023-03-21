**<h1 align="center"> ACTIVIDAD 4. </h1>**

----
Systemd Unit es una unidad de systemd, el sistema de inicio y administración de servicios en sistemas operativos basados en Linux. Estos son archivos de configuración en los cuales se describe como iniciarse, detenerse y administrarse un servicio específico.

----

## Systemd se debe instalar, podemos seguir los siguiente pasos
1. Instalamos la herramienta

```bash
    sudo apt-get update
    sudo apt-get install systemd
```

2. Se implementará un script **saludo.sh** el cual imprimirá un saludo y la fecha actual. 

```bash
    echo "Hola mucho gusto, fecha acual: $(date)"
```
Este script mostrará un saludo y la fecha solicitado.

```bash
    chmod +x saludo.sh 
```

3. Debemos crear un archivo tipo Systemed unit en la ruta **_/etc/systemd/system/_**, le colocamos el nombre que queramos, para la actividad será **servicioActividad4.service**
    
```bash
    sudo nano /etc/systemd/system/servicioActividad4.service
```  

4. Debemos modificar el archivo agregando estas configuraciones:

    ```
    [Unit] 
    Description=Impresion del Saludo con Fecha del día de hoy  
    
    [Service] 
    ExecStart=/ruta/al/script/saludo.sh
    
    [Install] 
    WantedBy=multi-user.target  
    ``` 
Cerramos y guardamos los cambios

5. Hay que reiniciar los servicios para que se actualicen los cambios, se puede utilizar el siguiente comando

```bash
    sudo systemctl daemon-reload   
``` 

6. Iniciamos el servicio con el siguiente comando:

```bash
    sudo systemctl start servicioActividad4.service
```

7. Para revisar si el servicio se está ejecutando debemos utilizar el siguiente comando:

```bash
    sudo systemctl status servicioActividad4.service  
```

Otra forma podría ser viendo todos los servicios, con el siguiente comando:  

```bash
    systemctl list-units
```
