#!/bin/bash

mkdir -p ssl

# Generate self-signed SSL certificate
openssl req -x509 -nodes -days 365 -newkey rsa:2048 \
    -keyout ssl/localhost.key \
    -out ssl/localhost.crt \
    -subj "/C=US/ST=State/L=City/O=Organization/CN=localhost"

echo "SSL certificates generated in ssl/ directory"
echo "You may need to trust the certificate in your system:"
echo "For Mac: sudo security add-trusted-cert -d -r trustRoot -k /Library/Keychains/System.keychain ssl/localhost.crt"
echo "For Windows: Import localhost.crt to Trusted Root Certification Authorities"
