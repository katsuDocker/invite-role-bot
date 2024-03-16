ARG PYTHON_VERSION=3.11.6
FROM --platform="linux/amd64" python:${PYTHON_VERSION} as base

WORKDIR /app
COPY requirements.txt . 
RUN pip install -r requirements.txt
COPY . .

CMD python main.py
