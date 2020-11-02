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
    