class webhost::apache {
	service {'apache':
	require	=> Package['httpd'], 
}
}

