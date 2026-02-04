# Imagen base
FROM eclipse-temurin:17-jdk-alpine

# Directorio de trabajo
WORKDIR /app

# Copiar el jar
COPY target/*.jar app.jar

# Exponer puerto (Render usa PORT dinámico)
EXPOSE 8080

# Ejecutar la app
ENTRYPOINT ["java","-jar","/app/app.jar"]
