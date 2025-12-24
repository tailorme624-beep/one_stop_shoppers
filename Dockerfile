# Use the official Flutter image as the base image for building
FROM cirrusci/flutter:stable AS build

# Set the working directory
WORKDIR /app

# Copy the pubspec files to download dependencies
COPY pubspec.* ./

# Get dependencies
RUN flutter pub get

# Copy the rest of the application code
COPY . .

# Build the web application
RUN flutter build web --release

# Use nginx to serve the built web application
FROM nginx:alpine

# Copy the built web application from the build stage
COPY --from=build /app/build/web /usr/share/nginx/html

# Copy custom nginx configuration if needed (optional)
# COPY nginx.conf /etc/nginx/nginx.conf

# Expose port 80
EXPOSE 80

# Start nginx
CMD ["nginx", "-g", "daemon off;"]
