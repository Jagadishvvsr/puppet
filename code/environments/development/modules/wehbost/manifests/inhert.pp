class webhost::ssl inherits webhost::apache {
	Service['apache'] {
	 require +> [ File['apache.pem'],File['httpd.conf']],
}

}
