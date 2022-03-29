# select base image
FROM nginx

# Label it - add optional details
LABEL MAINTAINER=JAY

# copy the data for localhost to container 
COPY index.html /usr/share/nginx/html/
# copy index.html to usr/share/nginx/html/

# expose the require port  - port 80
EXPOSE 80

# launch the app
CMD ["nginx", "-g", "daemon off;"]
# CMD will run the commannd in this case to launch the image when we create a container