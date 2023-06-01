for i in {1..254} ;do (ping -c 1 172.16.5.$i | grep "bytes from" &) ;done
