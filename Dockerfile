FROM mattrayner/lamp:latest-1804

LABEL MAINTAINER Khaled Alam <khaledalam.net@gmail.com>

RUN apt-get update && apt-get upgrade -y \
    apt-get install nano \
    curl -sL https://deb.nodesource.com/setup_10.x | bash - \
    apt-get install nodejs

    
