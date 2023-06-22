<?php
require_once 'prodslct.php';

class prodslctTest extends \PHPUnit\Framework\TestCase
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

    public function testObtenerProductos()
    {
        $prodslct = new prodslct();

        ob_start();
        $prodslct->obtenerProductos();
        $output = ob_get_clean();

        $this->assertNotEmpty($output);
        // Realiza más aserciones según tus necesidades
    }

    public function testAgregarProducto()
    {
        $_POST['nombre'] = 'Nuevo Producto';
        $_POST['precio'] = '10.99';

        $prodslct = new prodslct();

        ob_start();
        $prodslct->agregarProducto();
        $output = ob_get_clean();

        $this->assertEmpty($output);
        // Realiza más aserciones según tus necesidades
    }

    public function testEliminarProducto()
    {
        // Supongamos que existe un producto con el ID 1
        $idProducto = 1;

        $prodslct = new prodslct();

        ob_start();
        $prodslct->eliminarProducto($idProducto);
        $output = ob_get_clean();

        $this->assertEmpty($output);
        // Realiza más aserciones según tus necesidades
    }
}
?>
