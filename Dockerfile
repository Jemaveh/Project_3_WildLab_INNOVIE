FROM python:3.10-slim

WORKDIR /

COPY assets/ ./assets/
COPY data/ ./data/
COPY InnoVie.py .
COPY requirements.txt .
COPY wildlab-b395b393ac77.json .

RUN pip install -r requirements.txt

CMD ["python3", "InnoVie.py"] 
