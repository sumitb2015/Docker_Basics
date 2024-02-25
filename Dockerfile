FROM ubuntu
WORKDIR /usr/src/app

COPY requirements.txt model.py ./

RUN apt update && apt install -y python3
RUN apt install python3 -y && apt install python3-pip -y && apt install nano -y

RUN pip3 install --no-cache-dir --upgrade pip \
   && pip3 install --no-cache-dir -r requirements.txt
