#!/bin/bash

usage () {
    echo "Missing parameter: $1"
    exit 1
}


# todo: check if 443 is available, offer to shut down
# put MAPIC_USER_EMAIL somwhere permanently

test -z $MAPIC_USER_EMAIL && read -p "Please enter your email: "  MAPIC_USER_EMAIL
test -z $MAPIC_USER_EMAIL && usage MAPIC_USER_EMAIL # check email
test -z "$MAPIC_ROOT_FOLDER" && usage "MAPIC_ROOT_FOLDER" # check MAPIC_ROOT_FOLDER is set
test -z "$MAPIC_DOMAIN" && usage "MAPIC_DOMAIN" # check MAPIC_ROOT_FOLDER is set

    
# certbot-auto
./ssl certonly \
    --standalone \
    --agree-tos \
    --email "$MAPIC_USER_EMAIL" \
    --hsts \
    --non-interactive \
    --domain "$MAPIC_DOMAIN"           \
    --domain proxy-a-"$MAPIC_DOMAIN"   \
    --domain proxy-b-"$MAPIC_DOMAIN"   \
    --domain proxy-c-"$MAPIC_DOMAIN"   \
    --domain proxy-d-"$MAPIC_DOMAIN"   \
    --domain tiles-a-"$MAPIC_DOMAIN"   \
    --domain tiles-b-"$MAPIC_DOMAIN"   \
    --domain tiles-c-"$MAPIC_DOMAIN"   \
    --domain tiles-d-"$MAPIC_DOMAIN"   \
    --domain  grid-a-"$MAPIC_DOMAIN"   \
    --domain  grid-b-"$MAPIC_DOMAIN"   \
    --domain  grid-c-"$MAPIC_DOMAIN"   \
    --domain  grid-d-"$MAPIC_DOMAIN"    
   
CERT_PATH=$MAPIC_ROOT_FOLDER/config/$MAPIC_DOMAIN

echo "Created certificates, moving them to $CERT_PATH"
cp /etc/letsencrypt/live/"$MAPIC_DOMAIN"/privkey.pem $CERT_PATH/ssl_certificate.key
cp /etc/letsencrypt/live/"$MAPIC_DOMAIN"/fullchain.pem $CERT_PATH/ssl_certificate.pem