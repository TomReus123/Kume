<?php
$con=mysqli_connect("localhost","TomReus","irbvwgui","19830_Kume");
// Check connection
if (mysqli_connect_errno())
{
	echo "Failed to connect to MySQL: " . mysqli_connect_error();
}


//$author = isset($_GET['author']) ? $_GET['author'] : 0;
switch($_GET["action"]) {
	case "lucas":

		$result = mysqli_query($con,"SELECT * FROM projects WHERE author='Lucas Veerman';");
		$data = $result->fetch_assoc();

		mysqli_close($con);
		echo "<script src='js/Lucas.js'></script>";
		break;
	case "tom":

		$result = mysqli_query($con,"SELECT * FROM projects WHERE author='Tom Reus';");
		$data = $result->fetch_assoc();

		mysqli_close($con);
		echo "<script src='js/Tom.js'></script>";
		break;
	case "tijme":

		$result = mysqli_query($con,"SELECT * FROM projects WHERE author='Tijme Dekker';");
		$data = $result->fetch_assoc();

		mysqli_close($con);
		break;
	case "Koen":
		echo "<script src='js/Koen.js'></script>";
		$result = mysqli_query($con,"SELECT * FROM projects WHERE author='Koen';");
		$data = $result->fetch_assoc();

		mysqli_close($con);
		break;
}

?>

<!DOCTYPE html>
<html>
<head>
	<title>Kume</title>
	<link rel="stylesheet" type="text/css" href="projectsStyle.css"/>
	<link href="https://fonts.googleapis.com/css?family=Ubuntu" rel="stylesheet">
	<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
</head>
<body>
	<div class="menu" id="menu">
		<a href="http://19830.hosts.ma-cloud.nl/bewijzenmap3/periode1/Kume/index.html"><img src="logo.png" id="logo" alt="logo"></a>
		<ul>
			<li><span id="menuScrollHome"><a href="http://19830.hosts.ma-cloud.nl/bewijzenmap3/periode1/Kume/index.html#projects">TERUG</a></span></li>
		</ul>
	</div>
		<div id="wrapper">
			<div id="imageBig"><img src="img/<?php echo $data["imageBig"]; ?>" id="display" alt="img"> </div>
			<div id="content">
			<h2><?php echo $data["title"]; ?></h2>
			<p><?php echo $data["description"]; ?></p>
			</div>
			<div id="imagesDiv">
			</div>
			<div id="footer"></div>
	</div>
</body>
</html>