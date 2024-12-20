FROM python:3.11-bullseye

COPY requirements.txt ./
RUN pip install --no-cache-dir -r requirements.txt

COPY .env ./
COPY app.py ./
CMD [ "python", "./app.py" ]
