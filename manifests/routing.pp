class jenkins::routing inherits jenkins{
       exec{'routing':
               command   =>  "iptables -A PREROUTING -t nat -i eth0 -p tcp --dport $::jenkins::to_port -j REDIRECT --to-port 8080",
               path      =>  '/usr/bin:/usr/sbin:/bin:/usr/local/bin',
               user      =>  'root',
       }
}
