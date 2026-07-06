class mycompany::website (

	String $title = "Hello Puppet!\n"
){
	file {"/var/www/html/index.html":
	content => "${title}\n",
}	

}

