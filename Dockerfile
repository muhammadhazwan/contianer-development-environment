FROM ubuntu:latest

RUN apt-get update && apt-get install -y curl apt-transport-https gnupg2
RUN curl -sSL https://packages.microsoft.com/keys/microsoft.asc | apt-key add -
RUN curl -sSL https://packages.microsoft.com/config/ubuntu/20.04/prod.list > /etc/apt/sources.list.d/microsoft-prod.list
RUN apt-get update && apt-get install -y code-server
