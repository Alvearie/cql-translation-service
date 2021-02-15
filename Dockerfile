# fetch basic image
FROM us.icr.io/cdt-common-rns/base-images/ubi8-ibmjre:20210202.0858

WORKDIR /

COPY target/cql-translation-server-1.5.1-jar-with-dependencies.jar cql-translation-server-1.5.1-jar-with-dependencies.jar

# local application port
EXPOSE 8080

# execute it
CMD ["java", "-jar", "cql-translation-server-1.5.1-jar-with-dependencies.jar", "-d"]
