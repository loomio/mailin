FROM node:20-slim
EXPOSE 25
RUN apt-get update -qq
RUN apt-get install -y build-essential spamassassin spamc
COPY . /app
WORKDIR /app
RUN npm install
CMD npm run start
