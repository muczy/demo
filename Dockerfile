FROM gradle:6.6.1-jdk8-openj9

WORKDIR /app

# Only copy dependency-related files
COPY build.gradle settings.gradle gradle gradlew /app/

# Only download dependencies
#RUN gradle --no-daemon --refresh-dependencies -x check && du -hs $GRADLE_USER_HOME
RUN git init && git add build.gradle && git commit -m asd && gradle clean build --no-daemon || true
RUN rm -rf .git

# Copy all files
COPY ./ /app/
