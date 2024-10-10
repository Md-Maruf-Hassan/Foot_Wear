
<?php include "../classes/AdminLogin.php"; ?>


<?php
 $al = new AdminLogin();
 if ($_SERVER['REQUEST_METHOD']=='POST' or isset($_POST['submit'])) {
 	$adminUser = $_POST['adminUser'];
 	$adminPass = $_POST['adminPass'];
 	
 	$loginChk  = $al->adminLogin($adminUser, $adminPass);
 }
?>

<!DOCTYPE html>
<head>
<meta charset="utf-8">
<title>Login</title>
    <link rel="stylesheet" type="text/css" href="css/stylelogin.css" media="screen" />
</head>
<body>
<div class="container">
	<section id="content">
		<form action="" method="post">
			<h1>Admin Login</h1>
			<span style="color: red; font-size: 18px;">
				<?php
					if (isset($loginChk)) {
						echo "$loginChk";
					}
				?>
			</span>
			<div>
				<input type="text" placeholder="Username" name="adminUser"/>
			</div>
			<div>
				<input type="password" placeholder="Password" name="adminPass"/>
			</div>
			<div>
				<input type="submit" name="submit" value="Log in" />
			</div>
		</form><!-- form -->
		<div class="button">
			<a href="#">Footwear</a>
		</div><!-- button -->
	</section><!-- content -->
</div><!-- container -->
</body>
</html>