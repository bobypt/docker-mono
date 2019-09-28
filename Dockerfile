FROM mono:latest

RUN apt-get update && apt install -y curl unzip zip netcat

RUN cd /tmp && curl -O http://ericlawrence.com/dl/MonoFiddler-v4484.zip

RUN unzip /tmp/MonoFiddler-v4484.zip

CMD ["/bin/sh"]
