FROM ubuntu
RUN mkdir -p /usr/share/nginx/html/
RUN echo "hello world volume share!" > /usr/share/nginx/html/index.html
VOLUME /usr/share/nginx/html/

RUN echo "#!/bin/bash \nsleep 40s" > /sleep.sh && chmod 777 /sleep.sh

CMD ["./sleep.sh"]
