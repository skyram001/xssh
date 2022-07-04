FROM devisty/xssh:v2

RUN apt-get update
RUN apt-get upgrade -y
RUN rm -rf /var/lib/apt/lists/*

WORKDIR /app
COPY . /app
RUN chmod +x /app/start.sh
CMD ["/app/start.sh"]
EXPOSE 80
