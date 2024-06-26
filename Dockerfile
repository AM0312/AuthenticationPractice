FROM node:14-alpine
WORKDIR /app
# Copy package.json and package-lock.json to the working directory
COPY package*.json ./
# Install dependencies
RUN npm install
# Copy the rest of the application files to the working directory
COPY . .
# Expose the port the app runs on
EXPOSE 5000
# Command to run the application
CMD ["npm", "start"]