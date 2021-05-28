# Specify the base of the image
FROM node

# Change the container working directory to a specific directory
WORKDIR /app

# Copy files into the current container working directory
COPY ["./app/package.json", "./app/package-lock.json*", "./"]

# Run a linux command in the container
RUN npm install

# Copy the rest of the files into the current container working directory
COPY ./app .

# Exposing port 5000 in the container
EXPOSE 5000

# the CMD command has to always be in the dockerfile, it is a default command to run when the container starts, so a Dockerfile should always have and should only have one CMD command to start the container.
CMD [ "npm", "start" ]