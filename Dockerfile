FROM java:8
MAINTAINER tanghs<782599753@qq.com>
ENV MYPATH /user/local
WORKDIR $MYPATH
COPY *.jar /user/local/app.jar
CMD ["--server.port=8080"]
EXPOSE 8080
ENTRYPOINT ["java","-jar","app.jar"]
CMD echo $MYPATH
CMD "------end------"