FROM ubuntu:18.04
MAINTAINER chaunecy <chaunecy@outlook.com>

RUN apt-get update && \
    apt-get install gcc g++ -y && \
    apt-get autoclean -y && \
    apt-get autoremove -y && \
    rm -rf /var/lib/apt/lists/* && \
    useradd guest -m && \
    chmod a-w /home/guest/.bashrc && \
    chmod a-w /home/guest/.profile && \
    chmod a-w /home/guest/.bash_logout

USER guest
WORKDIR home
WORKDIR guest
EXPOSE 80
CMD ["bash"]
