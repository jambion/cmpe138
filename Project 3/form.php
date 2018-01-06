<html>
	<body>
	
	<?php
		// Create connection
		$con=mysql_connect("127.0.0.1","root","");

		// Check connection
		if(!$con)
		{
			die("Could not connect: " .mysql_error());
		}
	?>
	
	</body>
</html>