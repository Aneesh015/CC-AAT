# Use an official Node.js runtime as a base image
FROM node:14

# Set the working directory inside the container
WORKDIR /usr/src/app

# Copy package.json and package-lock.json to the working directory
COPY package*.json ./

# Install app dependencies
RUN npm install

# Copy the application code to the working directory
COPY . .

# Expose the port the app runs on
EXPOSE 5000

# Define the command to run the application
CMD npm start