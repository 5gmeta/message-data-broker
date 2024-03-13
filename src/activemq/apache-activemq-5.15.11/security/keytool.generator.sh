#!/bin/bash
cd ../conf
echo "Using keytool for generating key into keystor broker.ks"
keytool -genkeypair -alias broker -keyalg EC -keysize 256 -sigalg SHA256withECDSA  -validity 1095 -keystore broker.ks -storepass password

echo "Exportying nwe broker certificate"
keytool -export -alias broker -keystore broker.ks -file broker_cert


echo 'The JKS keystore uses a proprietary format. It is recommended to migrate to PKCS12 which is an industry standard format using "keytool -importkeystore -srckeystore broker.ks -destkeystore broker.ks -deststoretype pkcs12"'

export ACTIVEMQ_SSL_OPTS='-Djavax.net.ssl.keyStore=~mauri/Project/backup-work-Croads/apache-activemq-5.15.11/conf/broker.ks -Djavax.net.ssl.keyStorePassword=password'
