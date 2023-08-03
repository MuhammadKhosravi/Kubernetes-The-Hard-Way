for instance in worker; do
    sftp vagrant@192.168.56.5 ~/ <<< $'put worker.sh'
    vagrant ssh $instance -- "bash worker.sh"  
done