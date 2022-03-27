FROM python
WORKDIR /usr/flaskWithDocker
RUN pip install flask
COPY . .
EXPOSE 5000
CMD ["python", "app.py"]