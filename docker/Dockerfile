FROM rockylinux/rockylinux:9.1

RUN dnf -y update && \
    dnf -y install java-1.8.0-openjdk wget

WORKDIR /opt/

RUN wget https://github.com/s-andrews/FastQC/archive/refs/tags/v0.12.1.tar.gz -Ofastqc.tar.gz
RUN tar -xvf fastqc.tar.gz
RUN ln -s /opt/fastqc /usr/local/bin/fastqc

RUN java -version
RUN fastqc -version

ENTRYPOINT [ "fastqc" ]
