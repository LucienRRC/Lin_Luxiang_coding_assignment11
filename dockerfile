
FROM node:18-alpine

WORKDIR /Lin_Luxiang_site

COPY package*.json ./
RUN npm install

COPY . .

EXPOSE 3000


CMD ["npm", "start"]