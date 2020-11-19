FROM gradle:6.6.1-jdk8-openj9

WORKDIR /app

# Only copy dependency-related files
COPY build.gradle settings.gradle

# Only download dependencies
# Eat the expected build failure since no source code has been copied yet
RUN gradle clean build --no-daemon > /dev/null 2>&1 || true

# Copy all files
COPY ./ /app/

# Do the actual build
#RUN gradle clean build --no-daemon
