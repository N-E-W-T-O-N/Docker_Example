# Use the official Ubuntu base image
FROM ubuntu:latest

# Install necessary packages
RUN apt-get update
RUN apt-get install  xfce4 xfce4-goodies xfce4-session locales xrdp -y
RUN apt-get clean
RUN apt-get dist-upgrade -y
RUN systemctl enable xrdp
# Set the locale to en_US.UTF-8
RUN locale-gen en_US.UTF-8
ENV LANG en_US.UTF-8

# Expose RDP port
EXPOSE 3389


# Create a user and set a password
ARG USERNAME
ARG PASSWORD

RUN useradd -m $USERNAME && \
    echo "$USERNAME:$PASSWORD" | chpasswd && \
    adduser $USERNAME sudo

# Set up the startup script
RUN echo "xfce4-session" >  ~/.xsession
#/home/$USERNAME/.xsession

CMD ["xrdp","xrdp-sesman"]