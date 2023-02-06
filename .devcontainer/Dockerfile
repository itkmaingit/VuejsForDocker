FROM node:18
EXPOSE 3000
# Install basic development tools
RUN apt update && apt install -y less man-db sudo

# Ensure default `node` user has access to `sudo`
ARG USERNAME=node
RUN echo $USERNAME ALL=\(root\) NOPASSWD:ALL > /etc/sudoers.d/$USERNAME \
    && chmod 0440 /etc/sudoers.d/$USERNAME


COPY nuxt.config.ts /home/node/copy_modules/
COPY vuetify.js /home/node/copy_modules/
COPY webfontloader.client.js /home/node/copy_modules/
COPY postCreateCommand.sh /home/node/copy_modules/
