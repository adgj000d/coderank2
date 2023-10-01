FROM python:3
ENV PYTHONUNBUFFERED 1 

# RUN apk --no-cache python3 g++ make

WORKDIR /OJ

COPY requirements.txt requirements.txt
RUN pip install -r requirements.txt

RUN apt-get update
RUN apt-get install gcc

COPY . .

CMD ["python3", "manage.py", "runserver", "0.0.0.0:8000"]