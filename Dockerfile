FROM gradle:6.6.1-jdk8-openj9

WORKDIR /app

# Only copy dependency-related files
COPY build.gradle settings.gradle gradle gradlew /app/

# Only download dependencies
RUN ./gradlew --no-daemon clean compileJava

# Copy all files
COPY ./ /app/
