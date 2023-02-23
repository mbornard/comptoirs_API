# on part d'une image incluant java et maven
FROM maven:3.9.0-eclipse-temurin-17
# on copie les sources de notre projet dans l'image
COPY src src
# on copie aussi le pom.xml
COPY pom.xml .
# on construit le projet
RUN mvn package
#on lance le programme construit au démarrage du conteneur
CMD java -jar target/*.jar
#On documente l'utilisation du port 8080
EXPOSE 8080
