<?php 

if(!empty($_SESSION['USER']))
	unset($_SESSION['USER']);

redirect('home');