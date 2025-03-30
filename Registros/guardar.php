<?php
// Verificar si se envió el formulario por POST
if ($_SERVER["REQUEST_METHOD"] != "POST") {
    header("Location: formulario.html");
    exit;
}

// Conexión a la base de datos
$servername = "localhost";
$username = "root";
$password = "";
$dbname = "registro_personas";

$conn = new mysqli($servername, $username, $password, $dbname);
if ($conn->connect_error) {
    die("Error de conexión: " . $conn->connect_error);
}

// Sanitizar y validar datos (con verificación de existencia)
$nombre_completo = htmlspecialchars($_POST['nombre_completo'] ?? '');
$fecha_nacimiento = $_POST['fecha_nacimiento'] ?? '';
$correo = filter_var($_POST['correo'] ?? '', FILTER_SANITIZE_EMAIL);
$contraseña = password_hash($_POST['contraseña'] ?? '', PASSWORD_DEFAULT);

// Validar campos obligatorios
if (empty($nombre_completo) || empty($fecha_nacimiento) || empty($correo) || empty($_POST['contraseña'])) {
    die("Todos los campos son obligatorios.");
}

// Validar formato de correo
if (!filter_var($correo, FILTER_VALIDATE_EMAIL)) {
    die("Formato de correo electrónico inválido.");
}

// Insertar con sentencia preparada
try {
    $stmt = $conn->prepare("INSERT INTO personas (nombre_completo, fecha_nacimiento, correo, contraseña) VALUES (?, ?, ?, ?)");
    $stmt->bind_param("ssss", $nombre_completo, $fecha_nacimiento, $correo, $contraseña);
    
    if ($stmt->execute()) {
        header("Location: mostrar.php");
    } else {
        throw new Exception("Error al guardar: " . $stmt->error);
    }
} catch (Exception $e) {
    die($e->getMessage());
} finally {
    $stmt->close();
    $conn->close();
}
?>