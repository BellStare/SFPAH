<?php
session_start();

require_once("clase.php");

$usar_db = new DBControl();
?>

<html>
<meta charset="UTF-8">
<head>
    <title>SFPAH</title>
    <link href="css/prodstyle.css" rel="stylesheet" />
    <link href="css/style.css" rel="stylesheet" />
    <script src="https://cdn.plot.ly/plotly-latest.min.js"></script>
</head>
<body>
<div align="center"><h1 style="color: white;">Historial de precios</h1></div>
<div align="center">
    <form action="" method="get">
        <input type="text" name="busqueda" style="width: 300px; height: 30px;" /><br>
        <input type="submit" name="enviar" value="Buscar" />
    </form>
    <br>
</div>
<?php
if(isset($_GET['enviar']))
{
    $busqueda = $_GET['busqueda'];
    $consulta = $usar_db->vaiQuery("SELECT * FROM productos WHERE nom LIKE '%$busqueda%'");
    foreach($consulta as $i => $k)
    {
        ?>
        <div class="contenedor_productos">
            <form method="POST" action="">
                <div><img src="<?php echo $consulta[$i]["img"]; ?>"></div>
                <div>
                    <div style="padding-top:20px;font-size:18px;"><?php echo $consulta[$i]["nom"]; ?></div>
                    <div style="padding-top:10px;font-size:20px;"><?php echo "S/.".$consulta[$i]["pre"]; ?></div>
                    <div>
                        <input type="hidden" name="cod" value="<?php echo $consulta[$i]["cod"]; ?>" />
                        <input type="submit" name="agregar" value="Historial" />
                    </div>
                </div>
            </form>
        </div>
        <?php
        if (isset($_POST['agregar'])) {
            $productCod = $_POST['cod'];
            $priceData = $usar_db->vaiQuery("SELECT fecha, pre FROM historial_precios WHERE prod_cod = '$productCod'");

            // Prepare data for the graph
            $dates = array();
            $prices = array();
            foreach ($priceData as $data) {
                $dates[] = $data['fecha'];
                $prices[] = $data['pre'];
            }

            // Create the graph using Plotly
            echo '<div id="graph"></div>';
            echo "<script>
                    var dates = " . json_encode($dates) . ";
                    var prices = " . json_encode($prices) . ";
                    
                    var trace = {
                        x: dates,
                        y: prices,
                        type: \"scatter\",
                        mode: \"lines+markers\",
                        marker: {size: 6},
                        line: {shape: \"spline\"}
                    };
                    
                    var layout = {
                        title: \"Historial de precio\",
                        xaxis: {title: \"Fecha\"},
                        yaxis: {title: \"Precio\"}
                    };
                    
                    Plotly.newPlot(\"graph\", [trace], layout);
                </script>";
        }
    }
}
?>
</body>
</html>
