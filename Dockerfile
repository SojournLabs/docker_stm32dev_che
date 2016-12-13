FROM codenvy/ubuntu_jdk8
RUN sudo apt-get update && sudo apt-get install -y software-properties-common python-software-properties
RUN sudo add-apt-repository ppa:team-gcc-arm-embedded/ppa && sudo apt-get update && sudo apt-get install -y gcc-arm-embedded
RUN sudo apt-get install -y python3-pip
RUN sudo pip3 install cpplint
RUN sudo pip3 install pyyaml
RUN sudo apt-get install -y git flex bison cmake
RUN cd / opt && sudo git clone https://github.com/doxygen/doxygen.git && cd doxygen && sudo mkdir build; cd build && sudo cmake -G \"Unix Makefiles\" .. && sudo make && sudo make install
RUN sudo apt-get install -y default-jdk
RUN sudo pip3 install openpyxl