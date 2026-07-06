class role::web 
(boolean $is_virtual  = 'true') { 
	include profile::base
	include profile::apache
  if $is_virtual {
	notify('Tried to include class on virtual machine, this node maybe missclassified.')
}
  elsif { notify('This is a warning from elseif class for testing')}
}
