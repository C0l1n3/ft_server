FROM debian:buster
LABEL maintainer="cfaure-g@student.42lyon.fr"
WORKDIR /ft_server
COPY srcs /ft_server
RUN apt-get update && apt-get upgrade -y && apt-get install -y figlet
EXPOSE 80 443
ENTRYPOINT ["sh", "script_server.sh"]
