# try simple demo app

FROM jetty

COPY idp/war/idp.war  /var/lib/jetty/lib/idp/idp.war

COPY conf/modules/idp.mod /var/lib/jetty/modules/idp.mod
## COPY jetty-base/modules/idp-logging.mod /var/lib/jetty/modules/

COPY conf/webapps/idp.xml /var/lib/jetty/idp/idp.xml
COPY jks/idp.jks /var/lib/jetty/lib/idp/idp.jks
COPY etc/krb5.conf /etc/krb5.conf

#COPY --chown=999:999 idp /opt/shibboleth-idp/
COPY --chown=999:999 idp /data/local/idp
COPY --chown=999:999 conf/logs/idp/ /logs/idp
COPY --chown=999:999 conf/metadata-cache/ /opt/metadata-cache/
COPY --chown=999:999 idp/metadata/ /opt/metadata/

EXPOSE 8080
EXPOSE 8443

RUN java -jar "$JETTY_HOME/start.jar" -e JAVA_OPTIONS="-Xmx1g -Djava.security.egd=file:/dev/urandom -Djava.io.tmpdir=tmp" --create-startd --add-to-start=idp

