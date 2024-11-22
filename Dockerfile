# syntax=docker/dockerfile:1

# Comments are provided throughout this file to help you get started.
# If you need more help, visit the Dockerfile reference guide at
# https://docs.docker.com/go/dockerfile-reference/

# Want to help us make this template better? Share your feedback here: https://forms.gle/ybq9Krt8jtBL3iCk7

# ARG NODE_VERSION=22.7.0

# FROM node:${NODE_VERSION}-alpine

# # Use production node environment by default.
# ENV NODE_ENV production


# WORKDIR /usr/src/app


# # Run the application as a non-root user.
# #USER node
 

# # Copy the rest of the source files into the image.
# #COPY dist /usr/src/app/dist

# COPY . /usr/src/app
# COPY index.js /usr/src/app



# RUN npm install -g @angular/cli
# RUN npm install --save-dev @angular-devkit/build-angular

# RUN npm install

# RUN npm run build 

# # Expose the port that the application listens on.
# EXPOSE 8080

# # Run the application.
# CMD node index.js


FROM nginx:alpine 
COPY nginx.conf /etc/nginx/


WORKDIR /usr/share/nginx/html

COPY dist/personal-website/browser .
EXPOSE 8080

CMD ["nginx", "-g", "daemon off;"]