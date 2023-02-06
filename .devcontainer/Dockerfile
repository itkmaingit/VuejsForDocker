FROM node:18
# Install basic development tools
RUN apt update && apt install -y less man-db sudo

# Ensure default `node` user has access to `sudo`
ARG USERNAME=node
RUN echo $USERNAME ALL=\(root\) NOPASSWD:ALL > /etc/sudoers.d/$USERNAME \
    && chmod 0440 /etc/sudoers.d/$USERNAME

# RUN -> volumes -> CMD
RUN yes | npx nuxi init /home/node/application
WORKDIR /home/node/application
RUN npm install yarn && yarn add @mdi/js mdi sass vuetify@next webfontloader && yarn install && mkdir pages components
COPY nuxt.config.ts /home/node/application/
COPY vuetify.js /home/node/application/plugins/
COPY webfontloader.client.js /home/node/application/plugins/
