# Use the official Node.js image as the base image
FROM node

# Create a directory to hold the application code
WORKDIR /app

# Copy package.json and package-lock.json (if present) to the image
COPY package*.json ./

# Install dependencies
RUN npm i

# Copy the rest of the source files into the image
COPY . .

# Expose the port that the application listens on
EXPOSE 5000

# Run the application with a non-root user
USER node

# Command to start the application
CMD ["node", "index.js"]
