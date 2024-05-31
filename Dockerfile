# Koristimo Java 17 baznu sliku
FROM openjdk:17-jdk-slim

# Označavamo /app kao radni direktorij
WORKDIR /app

# Kopiramo projekt u kontejner
COPY ./ /app/

# Gradimo Spring Boot aplikaciju
RUN ./mvnw clean package

# Eksponirajmo port 8080 za pristup aplikaciji
EXPOSE 8080

# Pokrenimo aplikaciju koristeći izgradnju JAR datoteku
CMD ["java", "-jar", "target/demo-0.0.1-SNAPSHOT.jar"]
