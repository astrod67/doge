FROM node:16-alpine
WORKDIR /app
COPY package.json ./
RUN npm install
COPY . .
ENV PORT 80
EXPOSE 80
CMD ["node", "server.js"]