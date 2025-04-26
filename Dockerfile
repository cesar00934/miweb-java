# Usar la imagen oficial de Tomcat
FROM tomcat:9.0

# Eliminar aplicaciones por defecto de Tomcat
RUN rm -rf /usr/local/tomcat/webapps/*

# Copiar tu WAR en el servidor Tomcat
COPY juego1-1.0.war /usr/local/tomcat/webapps/ROOT.war

# Exponer el puerto 8080 (Render detecta automáticamente)
EXPOSE 8080

# Comando para arrancar Tomcat
CMD ["catalina.sh", "run"]
