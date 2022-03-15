from alpine:latest

RUN apk add py3-pip
RUN apk add --no-cache python3-dev \
    && pip install --upgrade pip

WORKDIR /google_login
COPY . /google_login
RUN pip --no-cache-dir install -r requirements.txt

EXPOSE 5000

ENTRYPOINT ["python3"]
CMD ["app.py"]