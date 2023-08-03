for instance in master; do
    # sftp vagrant@192.168.56.4 ~/ <<< $'put etcd.sh'
    sftp vagrant@192.168.56.4 ~/ <<< $'put control.sh'
    # vagrant ssh $instance -- "bash etcd.sh"  

    sftp vagrant@192.168.56.4 ~/ <<< $'put kube-apiserver'
    sftp vagrant@192.168.56.4 ~/ <<< $'put kube-controller-manager'
    sftp vagrant@192.168.56.4 ~/ <<< $'put kube-scheduler'

    cd certs

    sftp vagrant@192.168.56.4 ~/ <<< $'put ca.pem'
    sftp vagrant@192.168.56.4 ~/ <<< $'put ca-key.pem'
    sftp vagrant@192.168.56.4 ~/ <<< $'put kubernetes-key.pem'
    sftp vagrant@192.168.56.4 ~/ <<< $'put kubernetes.pem'
    sftp vagrant@192.168.56.4 ~/ <<< $'put service-account-key.pem'
    sftp vagrant@192.168.56.4 ~/ <<< $'put service-account.pem'
    
    cd ../configs
    sftp vagrant@192.168.56.4 ~/ <<< $'put encryption-config.yaml'
   
    vagrant ssh $instance -- "bash control.sh"  
done