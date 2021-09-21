FROM python:3.8-alpine 

WORKDIR /nikhil/app  
#defining a new working directory

COPY app.py /nikhil/app/
#copy files in working directory, ADD . /nikhil/app --- will add all contents of docker_flask in WD

COPY ./templates/ /nikhil/app/templates

COPY requirements.txt /nikhil/app/

RUN pip install -r requirements.txt
#installing dependency

CMD ["python","app.py"]
#define the command to start the container