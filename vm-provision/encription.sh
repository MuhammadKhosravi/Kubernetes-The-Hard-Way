echo "[Task 0] Generate an encryption key"
ENCRYPTION_KEY=$(head -c 32 /dev/urandom | base64)
mkdir -p configs
cd configs

echo "[Task 1] Create the encryption-config.yaml encryption config file"
cat > encryption-config.yaml <<EOF
kind: EncryptionConfig
apiVersion: v1
resources:
  - resources:
      - secrets
    providers:
      - aescbc:
          keys:
            - name: key1
              secret: ${ENCRYPTION_KEY}
      - identity: {}
EOF

echo "[Task 2] Create the encryption-config.yaml encryption config file"
for instance in master; do
    sftp vagrant@192.168.56.4 ~/ <<< $'put encryption-config.yaml'
done

