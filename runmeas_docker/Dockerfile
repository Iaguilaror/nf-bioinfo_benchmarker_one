FROM ubuntu

RUN apt-get update \
&& apt install curl -y \
&& apt install openjdk-11-jdk -y \
&& apt install git -y

RUN curl -s https://get.nextflow.io | bash \
&& ln -s /nextflow /usr/local/bin/

RUN mkdir /home/test \
&& git clone https://github.com/Iaguilaror/bioinfo_benchmarker_one.git /home/test/one

CMD cd /home/test/one && git pull && bash runtest.sh
