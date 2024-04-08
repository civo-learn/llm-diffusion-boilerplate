FROM python:3.8-slim
LABEL org.opencontainers.image.source="https://github.com/civo-learn/llm-boilerplate"

WORKDIR /app

COPY requirements.txt .

COPY main.py .

RUN pip install --no-cache-dir -r requirements.txt

EXPOSE 80

CMD ["python", "main.py"]