<?php
require_once 'DBControl.php';

class DBControlTest extends PHPUnit\Framework\Testcase
{
    private $dbControl;

    protected function setUp(): void
    {
        $this->dbControl = new DBControl();
    }

    protected function tearDown(): void
    {
        // Realizar cualquier limpieza después de cada prueba si es necesario
    }

    public function testConectarDB()
    {
        $conn = $this->dbControl->conectarDB();
        $this->assertInstanceOf(mysqli::class, $conn);
        // Realiza más aserciones según tus necesidades
    }

    public function testVaiquery()
    {
        $query = "SELECT * FROM historial_precios";
        $result = $this->dbControl->vaiquery($query);
        $this->assertIsArray($result);
        // Realiza más aserciones según tus necesidades
    }

    public function testNfilas()
    {
        $query = "SELECT * FROM historial_precios";
        $totalfilas = $this->dbControl->nfilas($query);
        $this->assertIsInt($totalfilas);
        // Realiza más aserciones según tus necesidades
    }
}
?>
