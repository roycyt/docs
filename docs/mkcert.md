# Install

```
curl -L https://github.com/FiloSottile/mkcert/releases/download/v1.4.4/mkcert-v1.4.4-linux-amd64 -o mkcert
chmod +x mkcert
sudo mv mkcert /usr/local/bin
```

# Create

```
mkcert -key-file key.pem -cert-file cert.pem example.com *.example.com
```

```
mkcert -key-file key.pem -cert-file cert.pem 10.123.31.40
```
