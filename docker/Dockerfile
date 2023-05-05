FROM rockylinux/rockylinux:9.1

RUN dnf -y update && \
    dnf -y install java-1.8.0-openjdk wget perl

WORKDIR /opt/

RUN wget https://www.bioinformatics.babraham.ac.uk/projects/fastqc/fastqc_v0.12.1.zip -O fastqc.zip
RUN unzip fastqc.zip
RUN ln -s /opt/FastQC/fastqc /usr/local/bin/fastqc

RUN java -version
RUN fastqc --version

ENTRYPOINT [ "fastqc" ]
