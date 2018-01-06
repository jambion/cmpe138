<html xmins="http://wwww.w3.org/1999/xhtml">
<html>
	<body>
		<head>
			<title>Ultimum Domain</title>
			<style type="text/css">
				body{
					background-color:#F2F2F2;
					margin:0px;
					font-family:sans-serif,arial,verdana;
					}
				#name{
					color:#000000;
					margin:0px;
					height:50px;
					width:50%;
					font-family:sans-serif,arial,verdana;
					text-indent:10%;
					letter-spacing:0.2em;
					font-size:30px;
					line-height:2.2em;
					}
				img.size{
					width:100%;
					height:350px;
					margin:0px;
					}
				ul{
					width:100%;
					padding:15px;
					margin: 0px auto 0px auto;
					text-align: center;
					}
				li{
					display:inline;
					margin:0px 1%;
					}
				form{
					text-align: center;
					}
				#login{
					position:fixed;
					top:10px;
					right:25px;
					width:25%;
					}
				#userlogin{
					font-style:italic;
				}
				#userpassword{
					font-style:italic;
				}	
			</style>
		</head>
		
		<body>
			<p id="name">leLivre</p>
			
		<div id="login">
			<form action="login.php" method="post">
				<input id="userlogin" type="text" placeholder="username" name="username">
				<input id="userpassword" type="text" placeholder="password" name="password">
				<input id="loginbutton" type="submit" value="login">
			</form>
		</div>			
			
			<a href="index.php">
				<img src="book.jpg" class ="size" alt "Beach"/>
			</a>
			
			<br><br><br>
			

			<form action="form.php" method="post">
				<input type="text" name="book">
				<input type="submit" value="Search">
			</form>

		</body>
</html> 
