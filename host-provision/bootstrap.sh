echo "[Task 0] Downloading cfssl and cfssljson"
wget -q --show-progress --https-only --timestamping \
  https://storage.googleapis.com/kubernetes-the-hard-way/cfssl/1.4.1/linux/cfssl \
  https://storage.googleapis.com/kubernetes-the-hard-way/cfssl/1.4.1/linux/cfssljson

echo "[Task 1] Making binaries executable and moving them to /usr/local/bin"
chmod +x cfssl cfssljson
sudo mv cfssl cfssljson /usr/local/bin/

# TODO if any of these tasks fails, we should stop the script
