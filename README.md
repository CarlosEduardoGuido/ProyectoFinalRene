-Para la instalacion del sistema, es necesario tener descargado previamente el programa xampp y el programa visual studio code al igual que la dependencia composer.
-Links para las descargas de las aplicaciones: 
*Xampp: https://www.apachefriends.org/es/index.html
*Visual Studio Code: https://code.visualstudio.com/
*Composer: https://getcomposer.org/

-Para inicializar el proyecto sera requerido que se inicie el programa xampp con la caracteristicas apache y mysql activado.
-Posteriormente sera instalada la base de datos consultorio que viene en el repositorio con la extension .sql
-Despues de ello abriremos nuestra carpeta de la aplicacion de visual studio code.
-En el archivo .env cambiaremos las variables como el nombre de la base de datos y usuario, en caso de existir alguna contraseña con xampp o mysql se dejara como se encuentra actualmente el archivo.
-Para inicar la aplicacion abriremos una terminal dentro de la carpeta en visual studio code y ingresaremos el comando: php artisan serve
-Asi podremos ingresar a la aplicacion proporcionada desde el link que nos indique la consola, o desde la url por defecto de laravel que es: http://127.0.0.1:8000
-En este sistema se cuenta con una tienda en linea la cual es administrada con paypal y cuenta con roles como usuarios y administradores los cuales nos permiten realizar diversas funciones.
-Las credenciales para administrador son: 
    admin@utvt.com
    123admin
-Las credenciales para usuario son:
    usuario@utvt.com
    123usuario