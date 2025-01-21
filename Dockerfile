FROM tomcat:8.0.36-jre8

RUN rm -rf /usr/local/tomcat/webapps/*
ADD log4shell-1.0-SNAPSHOT.war /usr/local/tomcat/webapps/ROOT.war
ADD script.py /usr/src/app/script.py
# Instalar dependencias para Python
RUN apt-get update && apt-get install -y python3 python3-pip && \
    pip3 install flask==0.12.3 requests==2.19.1 && \
    apt-get clean
RUN echo "X5O!P%@AP[4\\PZX54(P^)7CC)7}$EICAR-STANDARD-ANTIVIRUS-TEST-FILE!$H+H*" > /usr/src/app/eicar.txt
EXPOSE 8080 8090
CMD ["catalina.sh", "run"]
