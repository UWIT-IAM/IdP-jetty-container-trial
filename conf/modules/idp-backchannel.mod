[description]
Shibboleth IdP Back-Channel

[depend]
idp

[files]
lib/ext/
https://build.shibboleth.net/nexus/service/local/artifact/maven/redirect?r=releases&g=net.shibboleth.utilities.jetty9&a=jetty9-dta-ssl&v=1.0.0&p=jar|lib/ext/jetty9-dta-ssl-1.0.0.jar

[xml]
etc/idp-backchannel.xml

[exec]
-Didp.home=/data/local/idp

