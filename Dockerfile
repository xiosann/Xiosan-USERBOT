FROM xiosann/Xiosan-USERBOT:buster

RUN git clone -b Xiosan-USERBOT https://github.com/xiosann/Xio-san-USERBOT /home/manuserbot/ \
    && chmod 777 /home/manuserbot \
    && mkdir /home/manuserbot/bin/

COPY ./sample_config.env ./config.env* /home/manuserbot/

WORKDIR /home/manuserbot/

CMD ["python3", "-m", "userbot"]
