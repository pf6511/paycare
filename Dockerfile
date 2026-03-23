FROM python:3.9-slim

WORKDIR /app

# 👇 IMPORTANT : copier requirements AVANT
COPY requirements.txt .

RUN pip install -r requirements.txt

# 👇 ensuite copier le code
COPY app/ /app

RUN mkdir -p /data/input /data/output

CMD ["python", "etl.py"]
