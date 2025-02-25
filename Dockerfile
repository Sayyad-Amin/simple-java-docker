# stable official Java runtime base image
FROM openjdk:17-jdk-alpine

# working directory
WORKDIR /app

# Copy source code into the container
COPY . .

# Compile the Java code
RUN javac src/Main.java

# Run the Java application when the container starts
CMD ["java", "Main"]
