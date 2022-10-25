#  Debian bullseye with node 16.18 base
FROM node:16.18-bullseye

# Container config
WORKDIR /usr/src
ADD ["./downloads/", "./"]

RUN apt update && apt-get install -y gconf-service libasound2 libatk1.0-0 libcairo2 libcups2 libfontconfig1 libgdk-pixbuf2.0-0 libgtk-3-0 libnspr4 libpango-1.0-0 libxss1 fonts-liberation libappindicator1 libnss3 lsb-release xdg-utils libgbm1 && dpkg -i ./chrome.deb; apt-get -fy install && rm ./chrome.deb && npm install -g typescript
