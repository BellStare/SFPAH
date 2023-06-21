<?php

$conn = new mysqli("localhost:3306","root","guerra2350","dbsfpah");

if($conn->connect_errno)
{
	echo "Error de coneción: (".$conn->connect_errno.")".$conn->connect_error;
}

$nombre = $_POST['txtUsuario']; 
$pass = $_POST['txtPassword']; 

if(isset($_POST['btnreg']))
{
	$pass_encryp = password_hash($pass,PASSWORD_DEFAULT);
	$queryregistrar = "INSERT INTO login(username,pass) values ('$nombre','$pass_encryp')";
	
	if(mysqli_query($conn,$queryregistrar))
	{
		echo "<script>alert('Usuario registrado: $nombre'); window.location='index.html'</script>";
	}
	else
	{
		echo "Error: ".$queryregistrar."<br>".mysql_error($conn);
	}
}

if(isset($_POST['btnlog']))
{
	$queryusuario = mysqli_query($conn, "SELECT * FROM login WHERE username = '$nombre'");
	$nr = mysqli_num_rows($queryusuario);
	$buscarpass = mysqli_fetch_array($queryusuario);
	
	if(($nr == 1) && (password_verify($pass,$buscarpass['pass'])))
	{
		echo "<script>alert('Bienvenido: $nombre'); window.location='Homepage.html'</script>";
	}
	else
	{
		echo "<script>alert('Usuario o contraseña incorrecto');window.location='index.html'</script>";
	}	
}
?>
