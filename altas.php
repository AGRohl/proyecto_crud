<html>
    <head>
        <meta charset="UTF-8">
        <title>Añadir Cliente</title>

    </head>
    <body>
        <h1>Alta Cliente</h1>
         <?php
        if ($_POST) {
            // include conexión a la base de datos
            include 'conexion.php';
            // insert query
            $query = "REPLACE INTO clientes "
                    . "SET nif=?, nombre=?, apellido1=?, apellido2=?, "
                    . " email=?, telefono=?, "
                    . "usuario=?, password=? ";
            echo $query,"<br>"; 
            
            //stmt = new mysqli_stmt($conexion,$query); //pero no vemos la preparación
            // prepare query for execution
            
            if ($stmt = $conexion->prepare($query)){
                   echo "<div>registro preparado.</div>";
            } else {
                
                die('Imposible preparar el registro.'.$conexion->error);
            }
            
            // asociar los parámetros
            $stmt->bind_param('ssssssss',$_POST['nif'],$_POST['nombre'],$_POST['apellido1'],$_POST['apellido2'],$_POST['email'],$_POST['telefono'],$_POST['usuario'],$_POST['password']);

            // Ejecutar la consulta
            if ($stmt->execute()) {
                echo "<div>Registro guardado.</div>";
            } else {
                die('Imposible guardar el registro: '. $conexion->error);
            }
        }
        ?>
        <form action='altas.php' method='post'>
            <table border='0'>
                <tr>
                    <td>NIF</td>
                    <td><input type='text' name='nif' /></td>
                </tr>
                <tr>
                    <td>Nombre</td>
                    <td><input type='text' name='nombre' /></td>
                </tr>
                <tr>
                    <td>1er Apellido</td>
                    <td><input type='text' name='apellido1'></textarea></td>
                </tr>
                <tr>
                    <td>2º Apellido</td>
                    <td><input type='text' name='apellido2'></textarea></td>
                </tr>
                <tr>
                    <td>email</td>
                    <td><input type='text' name='email' /></td>
                </tr>
                <tr>
                    <td>telefono</td>
                    <td><input type='text' name='telefono' /></td>
                </tr>
                <tr>
                    <td>usuario</td>
                    <td><input type='text' name='usuario' /></td>
                </tr>
                <tr>
                    <td>password</td>
                    <td><input type='text' name='password' /></td>
                </tr>
               
                <tr>
                    <td></td>
                    <td>
                        <input type='submit' value='Save' /> 
                        <a href='index.php'>Volver al inicio</a>
                    </td>
                </tr>
            </table>
        </form>
    </body>
</html>

