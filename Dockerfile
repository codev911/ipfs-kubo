# Use the official Node.js image as the base image
FROM node:lts-alpine

# Run install kubo
RUN yarn add kubo