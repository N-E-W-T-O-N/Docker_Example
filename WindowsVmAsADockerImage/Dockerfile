FROM ubuntu:latest as base 
RUN apt-get update && apt-get dist-upgrade -y 
RUN apt-get install apt-transport-https curl gnupg-agent -y
RUN apt-get install software-properties-common ca-certificates neofetch -y
RUN apt-get install qemu-kvm libvirt-daemon-system libvirt-dev -y
RUN apt-get install libvirt-clients bridge-utils -y
RUN chown root:kvm /dev/kvm
RUN service libvirtd start
RUN service virtlogd start
RUN apt-get install -y linux-image-$(uname -r)
RUN apt-get install curl  net-tools jq -y
RUN vagrant_latest_version=$(curl -s https://checkpoint-api.hashicorp.com/v1/check/vagrant  | jq -r -M '.current_version')
RUN echo $vagrant_latest_version
RUN curl -O https://releases.hashicorp.com/vagrant/$(echo $vagrant_latest_version)/vagrant_$(echo $vagrant_latest_version)_x86_64.deb
RUN dpkg -i vagrant_$(echo $vagrant_latest_version)_x86_64.deb
RUN vagrant plugin install vagrant-libvirt
RUN mkdir /win10
RUN cd /win10
RUN vagrant init peru/windows-10-enterprise-x64-eval
RUN VAGRANT_DEFAULT_PROVIDER=libvirt vagrant up
RUN vagrant rdp
#CMD ["vagrant", "up"]
CMD ["/bin/bash"]