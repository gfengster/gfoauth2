FROM openjdk

LABEL version="1.0"
LABEL description="GF Oauth2 Demo"

COPY ./target/gfoauth2.jar /opt/waracle/gfoauth2.jar

EXPOSE 19090 

CMD /opt/waracle/gfoauth2.jar

