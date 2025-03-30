<!DOCTYPE html>
<html lang="es">
<head>
    <meta charset="UTF-8">
    <title>Registros Guardados</title>
    <link rel="stylesheet" href="css/estilos.css">
</head>
<body>
    <div class="contenedor">
        <h1>Registros Guardados</h1>
        <table>
            <tr>
                <th>ID</th>
                <th>Nombre Completo</th>
                <th>Fecha Nacimiento</th>
                <th>Correo</th>
                <th>Contraseña</th>
                <th>Fecha Registro</th>
            </tr>
            <?php
            $conn = new mysqli("localhost", "root", "", "registro_personas");
            $result = $conn->query("SELECT * FROM personas");
            
            while ($row = $result->fetch_assoc()) {
                echo "<tr>
                    <td>{$row['id']}</td>
                    <td>{$row['nombre_completo']}</td>
                    <td>{$row['fecha_nacimiento']}</td>
                    <td>{$row['correo']}</td>
                    <td>••••••</td>
                    <td>{$row['fecha_registro']}</td>
                </tr>";
            }
            $conn->close();
            ?>
        </table>
    </div>
    <br>
    <div class="center">
    <a href="formulario.html">Formulario</a>
    </div>
</body>
</html>