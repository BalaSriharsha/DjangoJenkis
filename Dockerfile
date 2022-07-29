FROM ubuntu:latest
RUN apt update && apt upgrade -y && apt install python3-dev python3-pip net-tools -y
RUN mkdir /Django
WORKDIR /Django
COPY . .
RUN pip install -r requirements.txt
CMD ["python","manage.py","runserver","0.0.0.0:8000"]
