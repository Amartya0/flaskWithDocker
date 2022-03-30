FROM python
WORKDIR /usr/flaskWithDocker
RUN pip install flask
COPY . .
EXPOSE 5000
CMD ["python", "app.py"]


# docker run -d -t --restart unless-stopped -p 12345:5000 --name dockerdemocontainer dockerdemo
# -d start as daemon
# --restart restart policy
# -p port mapping host_port:docker_port
# --name name of container
# -v mount volume host_path:docker_path
# -t prevents container from exiting

# docker image ls
# list all images

# docker container ls
# list all containers

# docker start/restart/stop container_name/container_id

# docker rm -f container_name/container_id
# remove container

# docker image rm image_name/image_id
# remove image

# docker exec -it golang /bin/bash
# Execute the command "/bin/bash" in the "golang" container

# docker logs golang
# All stdouts are stored in the logs

# use ctrl+D as eof in terminal
