FROM python:alpine

WORKDIR ./usr/PassportDealer

RUN apk update && apk upgrade && apk add bash

COPY requirements.txt .

RUN pip3 install -r requirements.txt

COPY . .