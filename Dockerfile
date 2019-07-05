FROM java:8-jre

ADD ./target/liveserver.jar /app/
CMD ["java", "-Xmx200m", "-jar", "/app/liveserver.jar"]
ENV TZ=Asia/Shanghai
RUN ln -snf /usr/share/zoneinfo/$TZ /etc/localtime && echo $TZ > /etc/timezone
EXPOSE 8080
