FROM gradle:6.6.1-jdk8-openj9

WORKDIR /app

# Only copy dependency-related files
COPY build.gradle settings.gradle gradle gradlew /app/

# Only download dependencies
RUN gradle --no-daemon --refresh-dependencies && du -hs ~/.gradle

# Copy all files
COPY ./ /app/
