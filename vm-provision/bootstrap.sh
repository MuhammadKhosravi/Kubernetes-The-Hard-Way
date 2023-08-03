echo "[Task 0] Setting up Shecan in order to bypass internet sanctions"
sudo echo "search digikala.COM
nameserver 127.0.0.53
nameserver 178.22.122.100
nameserver 185.51.200.2" > /etc/resolv.conf

echo "[Task 1] Running apt update"
sudo apt update -y -qq  

echo "[Task 2] install kubectl on all things"
wget https://storage.googleapis.com/kubernetes-release/release/v1.21.0/bin/linux/amd64/kubectl
chmod +x kubectl
sudo mv kubectl /usr/local/bin/

echo "[Task 3] Varify installation"
kubectl version --client