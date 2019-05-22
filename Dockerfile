FROM jasonrivers/nginx-rtmp

LABEL MAINTAINER="Andreas Kasper <andreas.kasper@goo1.de>"

ADD entrypoint.sh /entrypoint.sh

EXPOSE 1935
EXPOSE 8080

ENTRYPOINT ["/bin/bash","/entrypoint.sh"]
CMD /opt/nginx/sbin/nginx -g "daemon off;"
