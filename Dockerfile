FROM node:14-alpine
WORKDIR /app
COPY package*.json ./
RUN npm install
COPY . .
RUN npm run build
EXPOSE 80
CMD ["npm", "run", "start"]

# FROM nginx:1.19-alpine
# COPY --from=test /app/dist/test /usr/share/nginx/html
# EXPOSE 80
