FROM python
WORKDIR /usr/flaskWithDocker
RUN pip install flask
COPY . .
EXPOSE 5000
CMD ["python", "app.py"]

# docker exec -it golang /bin/bash
# Execute the command "/bin/bash" in the "golang" container

# docker logs golang
# All stdouts are stored in the logs