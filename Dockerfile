FROM fedora:27
LABEL autor="@jorgepastorr"
LABEL description="nethost"

RUN dnf -y install xinetd iproute iputils nmap uw-imap procps net-tools \
         passwd httpd vsftpd openssh-server tftp-server 

RUN mkdir /opt/docker
COPY * /opt/docker/
RUN chmod +x /opt/docker/startup.sh

WORKDIR /opt/docker
CMD [ "/opt/docker/startup.sh" ]