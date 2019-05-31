FROM openjdk:11.0.2-jdk-slim

WORKDIR /malibu/service/hello-world/
COPY /build/libs/hello-world.jar ./hello-world.jar

ENV TZ=Asia/Seoul
RUN ln -snf /usr/share/zoneinfo/$TZ /etc/localtime && echo $TZ > /etc/timezone

CMD ["--spring.profiles.active=default"]
ENTRYPOINT ["java", "-jar", "hello-world.jar"]