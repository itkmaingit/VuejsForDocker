FROM node:18
EXPOSE 3000
# Install basic development tools
RUN apt update && apt install -y less man-db sudo

RUN mkdir src

RUN apk update && \
    apk upgrade && \
    apk add git && \
    npx nuxi init application