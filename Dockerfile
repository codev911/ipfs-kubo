# Use the official Node.js image as the base image
FROM node:lts-alpine

# Run symlink kubo
RUN npm link kubo

# Run install kubo
RUN npm i -g kubo