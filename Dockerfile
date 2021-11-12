FROM python:3.10.0-bullseye

ARG userid
ARG groupid

RUN groupadd -g $groupid mygroup
RUN useradd -u $userid -m -d /home/myuser -g mygroup myuser

USER myuser

WORKDIR /app
ENV PYTHONUNBUFFERED=1

COPY ./requirements.txt requirements.txt
RUN pip install -r requirements.txt

COPY ./main.py .

CMD python -u main.py


