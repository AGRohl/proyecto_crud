<!DOCTYPE html>
<!--
To change this license header, choose License Headers in Project Properties.
To change this template file, choose Tools | Templates
and open the template in the editor.
-->
<html>
    <head>
        <meta charset="UTF-8">
        <title>Proyecto CRUD</title>
        <script type="text/JavaScript" src="js/sha512.js"></script> 
        <script type="text/JavaScript" src="js/forms.js"></script>
        <script type="text/JavaScript">
            function borra_cliente(id) {
            var answer = confirm('¿Estás seguro que deseas borrar el cliente?');
            if (answer) {
            // si el usuario hace click en ok, 
            // se ejecutar borrar.php
            window.location = 'borra.php?id=' + id;
            }
            }
        </script> 
        <link media="all" href="css/style.css" rel="stylesheet" type="text/css"></link>
    </head>
    <body> 
        <div id="wrapper">
            <div id="header">
                <div id="logo">  
                    <img src="img/logo_blanco_0.png"></img>
                </div>
                <div id="title">
                    ASIR project!
                </div>
            </div>
            <div id="content">
                <?php
                $default = 'login'; //nuestra página por defecto.
                $page = isset($_GET['p']) ? $_GET['p'] : $default; //obtenemos la página que queremos mostrar.
                $page = basename($page); //nos quedamos con el nombre.
                if (!file_exists($page . '.php')) { //comprobamos que el fichero exista
                    $page = $default; //si no existe mostramos la página por defecto
                    //NOTA: Podíamos mostrar la página 404
                }
                include( $page . '.php'); //y ahora mostramos la pagina llamada
                ?> 
            </div>
            <div id="footer">
                <div id="subtitle">  
                    <a href="http://www.ausiasmarch.net/asir"> CFGS Administración de Sistemas Informáticos y Redes </a>
                </div>
            </div>
        </div>
    </body>
</html>
