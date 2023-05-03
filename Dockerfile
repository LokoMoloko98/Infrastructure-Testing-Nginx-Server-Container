# Use the latest version of the Amazon Linux base image
FROM ubuntu

# Update all installed packages to thier latest versions
RUN apt-get update

# Install the unzip package, which we will use it to extract the web files from the zip folder
RUN apt-get install nginx -y


# Change directory to the html directory
WORKDIR /var/www/html

# Copy the app files, the host file system into the container at the path var/www/html
COPY index.html /var/www/html
COPY script.js /var/www/html
COPY style.css /var/www/html
COPY LICENSE.txt /var/www/html
COPY README.md /var/www/html

# # Install the unzip package, which we will use it to extract the web files from the zip folder
# RUN apt-get install unzip -y

# # Install Git
# RUN apt-get install -y git

# # Clone the GitHub repository
# RUN git clone https://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@github.com/LokoMoloko98/application-codes.git 

# # Unzip the zip folder containing the web files
# RUN unzip application-codes/rentzone.zip -d application-codes/

# # Copy the web files into the HTML directory
# RUN cp -av application-codes/rentzone/. /var/www/html

# # Remove the repository we cloned
# RUN rm -rf application-codes


# Expose the default Apache and MySQL ports
EXPOSE 80

# Start Nginx
CMD ["nginx", "-g", "daemon off;"]