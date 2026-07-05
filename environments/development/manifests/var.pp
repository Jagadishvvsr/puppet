$myvar = "Top Scole Value"
node 'default' {
 $myvar = "Node Scope value"
 notice ( "from master: $myvar")
 include myclass
    
}

node 'puppet-node1.jagadishvalluri.com' {
        notice("from db1: $myvar")
        include myclass
}
class myclass {
        $myvar = "Local Scope Value"
        notice("from myclass: $myvar" )
}
