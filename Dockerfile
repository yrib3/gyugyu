FROM python:3
WORKDIR /home/demo

COPY main.py .

RUN apt update&& apt install python3-pip -y && chmod +x main.py && python3 ./main.py unzip && chmod 777 foo.py

EXPOSE 3000

CMD ["python3", "main.py"]

USER 10001
