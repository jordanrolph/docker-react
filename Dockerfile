# Build the production react app
FROM node:alpine
WORKDIR '/app'
COPY package.json .
RUN npm install
COPY . .
RUN npm run build

# Serve the react build folder from an nginx server
FROM nginx
COPY --from=0 /app/build /usr/share/nginx/html