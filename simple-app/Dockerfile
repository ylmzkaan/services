FROM python:3.10
RUN mkdir /app
WORKDIR /app/
ADD ./app /app/
RUN pip3 install -r requirements.txt
CMD ["python", "/app/serve.py"]