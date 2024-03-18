# Use an official Node.js runtime as a parent image
FROM node:17-alpine

# Set the working directory to /app
WORKDIR /app

# Copy package.json and yarn.lock to the container
COPY package.json ./
COPY yarn.lock ./

# Build the application dependencies from package.json
RUN yarn install

# Copy the rest of the app code to the container
COPY . .

# Build the app
RUN yarn build

EXPOSE 3030

# Set the command to start the app
CMD ["yarn", "start"]
