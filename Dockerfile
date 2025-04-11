FROM python:3

WORKDIR /app

RUN apt update && apt install -y git && \
    git clone https://github.com/alexbers/mtprotoproxy.git . && \
    pip install -r requirements.txt

CMD ["python3", "mtprotoproxy.py"]
