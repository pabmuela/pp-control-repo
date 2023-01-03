node 'puppet.local' {
  include role::master
  notify { 'this is the puppet master': }
}

node 'elk.local' {
  include role::elk
}

node 'default' {
  notify { 'this node did not match any of the listed definitions': }
}
