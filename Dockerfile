# Use the latest version of the Amazon Linux base image
FROM ubuntu

# Update all installed packages to thier latest versions
RUN apt-get update

# Install the nginx server, which we will use to serve the test web files
RUN apt-get install nginx -y --fix-missing --fix-missing

# # Install Git
# RUN apt-get install git -y

# # Install vim
# RUN apt-get install vim -y

# # Change directory to the html directory
# WORKDIR /var/www/html

# # Set the build argument directive
# ARG PERSONAL_ACCESS_TOKEN
# ARG GITHUB_USERNAME
# ARG REPOSITORY_NAME

# # Use the build argument to set environment variables 
# ENV PERSONAL_ACCESS_TOKEN=$PERSONAL_ACCESS_TOKEN
# ENV GITHUB_USERNAME=$GITHUB_USERNAME
# ENV REPOSITORY_NAME=$REPOSITORY_NAME


# # Clone the GitHub repository
# RUN git clone -b LokoMoloko98-ec2-test https://$PERSONAL_ACCESS_TOKEN@github.com/$GITHUB_USERNAME/$REPOSITORY_NAME.git

# # Copy the web files into the HTML directory
# RUN cp -av $REPOSITORY_NAME/. /var/www/html

#RUN chmod +x insertip.sh
#Display the host IP on index page
#RUN ./insertip.sh
COPY ./index.html /var/www/html

COPY ./script.js /var/www/html

COPY ./style.css /var/www/html

COPY ./images/* /var/www/html

# # Remove the repository we cloned
# RUN rm -rf $REPOSITORY_NAME

# Expose the default Nginx ports
EXPOSE 80

# Start Nginx
CMD ["nginx", "-g", "daemon off;"]
