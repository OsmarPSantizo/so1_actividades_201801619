#!/bin/sh
#Primero leo la variable GITHUB_USER
echo "Por favor introduzca su usuario de GITHUB"
read GITHUB_USER
echo "Bienvenido $GITHUB_USER"

#Hago la solicitud GET a la url https://api.github.com/users/$GITHUB_USER con el comendo curl
response=$(curl -s https://api.github.com/users/$GITHUB_USER)



#Uso jq(instale libreria) para parsear el JSON 
ghuser=$(echo $response | jq '.login')
ghid=$(echo $response | jq '.id')
accsin=$(echo $response | jq '.created_at')

#Imprimo el resultado y luego lo redirijo con >> hacia la ruta que quiero crear el archivo

#Obtengo la fecha del sistema
current_date=$(date +"%Y-%m-%d %T")

mkdir -p "/tmp/$current_date"

echo "Hola $ghuser. User ID: $ghid. Cuenta fue creada el: $accsin." >> "/tmp/$current_date/saludos.log"
