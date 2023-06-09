<?php
session_start();

require_once $_SERVER['DOCUMENT_ROOT'].'\clase.php';

$usar_db = new DBControl();

?>
    <html>
    <meta charset="UTF-8">
    <head>
        <title>SFPAH</title>

        <link href="css/prodstyle.css" rel="stylesheet" />
        <link href="css/style.css" rel="stylesheet" />


    </head>
<body>
    <div align="center"><h1 style="color: white;">Selección de productos</h1>



    </div>

    <div align="center">


        <form actions="" method="get">
            <input type="text" name="busqueda"> <br>
            <input type="submit" name="enviar" value="Buscar">

        </form>

        <br>

    </div>

<?php
if(isset($_GET['enviar'])){

    $busqueda = $_GET['busqueda'];
    $consulta = $usar_db->vaiquery("SELECT * FROM productos WHERE nom LIKE '%$busqueda%'");


    foreach($consulta as $i=>$k)
    {
        ?>
        <div class="contenedor_productos">
            <form method="POST" action="prodslct.php?accion=agregar&cod=
			<?php echo $consulta[$i]["cod"]; ?>">
                <div><img src="<?php echo $consulta[$i]["img"]; ?>"></div>
                <div>
                    <div style="padding-top:20px;font-size:18px;"><?php echo $consulta[$i]["nom"]; ?></div>
                    <div style="padding-top:10px;font-size:20px;"><?php echo "S/.".$consulta[$i]["pre"]; ?></div>
                    <div><input type="text" name="txtcantidad" value="1" size="2" /><input type="submit" value="Agregar" />
                    </div>
                </div>
            </form>
        </div></html><?php
    }

}
?>