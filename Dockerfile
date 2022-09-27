## Build ExpressJS and UI
FROM node:18.9.1-alpine3.16 AS build

# Specify that this is being built for production
ENV NODE_ENV=production

WORKDIR /build-context

# Copy required files for installs
COPY package.json .
COPY .yarn .yarn
COPY .yarnrc.yml .

# Install packages
RUN yarn install
