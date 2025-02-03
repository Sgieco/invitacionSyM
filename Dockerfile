# Imagen base de OpenJDK 20
FROM eclipse-temurin:20-jdk

# Establecer el directorio de trabajo
WORKDIR /app

# Copiar el archivo JAR generado en target a la carpeta del contenedor
COPY target/*.jar app.jar

# Exponer el puerto 8080 (puedes cambiarlo si tu app usa otro puerto)
EXPOSE 8080

# Comando para ejecutar la aplicación
CMD ["java", "-jar", "app.jar"]