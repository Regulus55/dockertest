FROM node:13.12.0-alpine
WORKDIR /react-to-do/frontend
COPY package*.json . 
RUN ["npm", "install"]

ENV NODE_ENV=production


COPY . .
EXPOSE 3000

USER node
CMD ["npm", "start"]