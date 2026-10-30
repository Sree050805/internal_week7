FROM python:3.12-slim-buster
WORKDIR /app
COPY . /app
RUN pip install --no-cahce-dir -r requirements.txt
EXPOSE 5001
CMD ["python","app.py"]
