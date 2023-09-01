FROM node:latest

WORKDIR /app
COPY ["package.json", "./"]
RUN npm install --production
COPY . .

CMD ["yarn", "start"]

# docker build -t dungeondash .
# docker run -p 1234:1234 dungeondash