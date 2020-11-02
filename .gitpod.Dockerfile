FROM gitpod/workspace-full

# Install custom tools, runtimes, etc.
# For example "bastet", a command-line tetris clone:
# RUN brew install bastet
#
# More information: https://www.gitpod.io/docs/config-docker/
RUN wget https://github.com/jpillora/chisel/releases/download/v1.7.2/chisel_1.7.2_linux_amd64.gz \
    && gunzip chisel_1.7.2_linux_amd64.gz \
    && chmod +x chisel_1.7.2_linux_amd64 \
    && mv chisel_1.7.2_linux_amd64 chisel
RUN sudo apt-get install -y ffmpeg \
    && wget https://s3plus.meituan.net/v1/mss_7e425c4d9dcb4bb4918bbfa2779e6de1/mpack/default/demo.flv
    
    