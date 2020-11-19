FROM openjdk:8

WORKDIR /app

# Only copy dependency-related files
COPY build.gradle settings.gradle

# Only download dependencies
# Eat the expected build failure since no source code has been copied yet
RUN ./gradlew clean build --no-daemon > /dev/null 2>&1 || true

# Copy all files
COPY ./ /app/

# Do the actual build
RUN ./gradlew clean build --no-daemon