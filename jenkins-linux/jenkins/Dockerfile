# FROM jenkins/jenkins:2.375.2-lts as development
FROM jenkins/jenkins:2.401.3-lts as development

ENV DEBIAN_FRONTEND noninteractive
USER root
# ■ Install Docker
RUN apt-get update -y
RUN apt-get install -y ca-certificates curl gnupg lsb-release
RUN mkdir -p /etc/apt/keyrings
RUN curl -fsSL https://download.docker.com/linux/debian/gpg | gpg --dearmor -o /etc/apt/keyrings/docker.gpg
RUN echo \
  "deb [arch=$(dpkg --print-architecture) signed-by=/etc/apt/keyrings/docker.gpg] https://download.docker.com/linux/debian \
  $(lsb_release -cs) stable" | tee /etc/apt/sources.list.d/docker.list > /dev/null
RUN apt-get update -y
RUN apt-cache policy docker-ce
RUN apt-get install -y docker-ce docker-ce-cli containerd.io docker-compose-plugin
RUN gpasswd -a jenkins docker
# ■ Install xvfb
RUN apt-get install -y xvfb
# ■ Install firefox
RUN apt-key adv --keyserver keyserver.ubuntu.com --recv-keys A6DCF7707EBC211F
RUN apt-get install -y software-properties-common
RUN apt-add-repository "deb http://ppa.launchpad.net/ubuntu-mozilla-security/ppa/ubuntu bionic main"
RUN apt-get update
RUN apt-get install -y firefox
RUN apt-get install -y curl zip unzip wget
# ■ Install Chrome
#RUN wget -q -O - https://dl-ssl.google.com/linux/linux_signing_key.pub | apt-key add -
#RUN sh -c 'echo "deb http://dl.google.com/linux/chrome/deb/ stable main" >> /etc/apt/sources.list.d/google.list'
#RUN apt-get update -y
#RUN apt-get install -y google-chrome-stable
RUN apt install -y maven
RUN apt-get install -y fonts-ipafont fonts-ipaexfont
# Add chrome user
# RUN groupadd -r chrome && useradd -r -g chrome -G audio,video chrome \
#    && mkdir -p /home/chrome/Downloads && chown -R chrome:chrome /home/chrome
RUN gpasswd -a jenkins audio
RUN gpasswd -a jenkins video
#RUN gpasswd -a jenkins chrome
# ■ Install Vim
RUN apt install -y sudo vim
# ■ Install nodejs
RUN curl -fsSL https://deb.nodesource.com/setup_20.x | sudo -E bash - && apt-get install -y nodejs
# ■ Install yarn
RUN npm install --global yarn
