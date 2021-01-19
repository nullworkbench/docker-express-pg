FROM node:14.15.4

WORKDIR /usr/src/app

COPY /app/package*.json ./

RUN npm install

COPY /app ./

EXPOSE 5000
# RUN chmod +x ./startup.sh
# CMD [ "./startup.sh" ]
CMD ["npm", "start"]