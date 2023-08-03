for i in {5..7}; do
    ssh vagrant@192.168.57.${i}  sudo route add -net 10.200.${i-5}.0 netmask 255.255.255.0 gw 192.168.57.${i}
done