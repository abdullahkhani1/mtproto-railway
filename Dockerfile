FROM python:3

RUN apt update && apt install -y git

WORKDIR /app

RUN git clone https://github.com/alexbers/mtprotoproxy.git . && \
    pip install -r requirements.txt

CMD ["python3", "mtprotoproxy.py"]
