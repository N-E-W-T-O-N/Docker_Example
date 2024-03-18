# # Use the official Alpine Linux as the base image
# FROM alpine:latest

# # Install SQLite3
# RUN apk --no-cache add sqlite

# # Create a directory for the SQLite database
# RUN mkdir -p /SqliteData

# # Set the working directory
# WORKDIR /SqliteData

# # Copy the database file to the container
# COPY ./SqliteData/patronas.db /SqliteData

# # Define a volume to persist data
# VOLUME /SqliteData

# # Command to run when the container starts
# CMD ["sqlite3", "patronas.db"]

# Use an official SQLite image as the base image
FROM sqlite:latest

# Create a directory for the SQLite database
RUN mkdir -p /SqliteData

# Set the working directory
WORKDIR /SqliteData

# Copy the database file to the container
COPY ./SqliteData/patronas.db /SqliteData
