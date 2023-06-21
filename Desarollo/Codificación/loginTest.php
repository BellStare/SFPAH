<?php
require_once 'login.php';

class loginTest extends \PHPUnit\Framework\TestCase
{
    private $conn;

    protected function setUp(): void
    {
        $this->conn = new mysqli("localhost", "root", "", "DBSFPAH");
        if ($this->conn->connect_errno) {
            echo "Error de conexión: (" . $this->conn->connect_errno . ")" . $this->conn->connect_error;
        }
    }

    protected function tearDown(): void
    {
        // Realizar cualquier limpieza después de cada prueba si es necesario
    }

    public function testRegistrarUsuario()
    {
        $_POST['txtUsuario'] = 'usuario';
        $_POST['txtPassword'] = 'password';

        $login = new login();
        $queryregistrar = "INSERT INTO login(username,pass) values ('usuario','" . password_hash('password', PASSWORD_DEFAULT) . "')";

        ob_start();
        mysqli_query($this->conn, $queryregistrar);
        $output = ob_get_clean();

        $this->assertEmpty($output);
        // Realiza más aserciones según tus necesidades
    }

    public function testIniciarSesionConUsuarioCorrecto()
    {
        $_POST['txtUsuario'] = 'usuario';
        $_POST['txtPassword'] = 'password';

        $login = new login();

        ob_start();
        $login->iniciarSesion();
        $output = ob_get_clean();

        $this->assertStringContainsString('Bienvenido: usuario', $output);
        // Realiza más aserciones según tus necesidades
    }

    public function testIniciarSesionConUsuarioIncorrecto()
    {
        $_POST['txtUsuario'] = 'usuario';
        $_POST['txtPassword'] = 'contraseña_incorrecta';

        $login = new login();

        ob_start();
        $login->iniciarSesion();
        $output = ob_get_clean();

        $this->assertStringContainsString('Usuario o contraseña incorrecto', $output);
        // Realiza más aserciones según tus necesidades
    }
}
?>
