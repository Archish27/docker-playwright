# A minimal docker image with Node and Playwright
FROM node:14.16.0-buster-slim

#tools
RUN apt-get update && apt-get install -y --no-install-recommends \
    xvfb

# Places binaries to node_modules/playwright
ENV PLAYWRIGHT_BROWSERS_PATH=0

ADD package.json package-lock.json /
RUN npm install
