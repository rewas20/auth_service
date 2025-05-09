FROM node:18-alpine

# Set the working directory inside the container
WORKDIR /usr/src/app

# Copy package.json and package-lock.json (if available)
COPY package*.json ./

# Install app dependencies
RUN npm install

# Copy the rest of the application code
COPY . .

# Expose the port your Node.js 
EXPOSE 5000

# Start the application using npm script (e.g., "dev" script in package.json)
CMD ["npm","run","dev"]
