# Use the official Node.js image as the base image
FROM node:lts-alpine

# Run add yarn
RUN npm i -g yarn

# Run install kubo
RUN yarn add -g kubo