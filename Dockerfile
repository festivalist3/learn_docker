# Add node image to the container

FROM node:21-alpine

# Set the working directory inside the container

WORKDIR /usr/src/app

# Copy the package.json and package-lock.json files to the working directory

COPY package*.json ./

# Install the dependencies

RUN npm install
# Copy the rest of the application code to the working directory

COPY . .

# Expose the port 3000

EXPOSE 3000

# Run the application

CMD ["npm", "start"]