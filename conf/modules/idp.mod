[description]
Shibboleth IdP

[depend]
annotations
deploy
ext
https
jsp
jstl
plus
resources
server
servlets
ssl

[xml]
idp/idp.xml

[ini]
## Keystore file path (relative to $jetty.base)
jetty.sslContext.keyStorePath=lib/idp/idp.jks
## Truststore file path (relative to $jetty.base)
jetty.sslContext.trustStorePath=lib/idp/idp.jks

## Keystore type
jetty.sslContext.keyStoreType=PKCS12
## Truststore type and provider
jetty.sslContext.trustStoreType=PKCS12

## Keystore password
jetty.sslContext.keyStorePassword=spud123
## Truststore password
jetty.sslContext.trustStorePassword=spud123
## KeyManager password
jetty.sslContext.keyManagerPassword=spud123

## Deny SSL renegotiation
jetty.sslContext.renegotiationAllowed=false

## Connector host/address to bind to
# jetty.ssl.host=0.0.0.0

## Connector port to listen on
jetty.ssl.port=8443

[files]
tmp/

[ini-template]
[exec]
-Didp.home=/data/local/idp


