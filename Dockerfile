# Stage 1: Build
FROM python:3.8-slim-buster as build

WORKDIR /app

COPY requirements.txt .
RUN pip install -r requirements.txt

COPY . .

# Stage 2: Run
FROM python:3.8-slim-buster

WORKDIR /app

COPY --from=build /app .

CMD ["python", "app.py"]