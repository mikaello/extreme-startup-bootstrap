FROM mcr.microsoft.com/vscode/devcontainers/typescript-node:latest

# See all containers at https://github.com/microsoft/vscode-dev-containers/tree/main/containers

RUN apt-get update && apt-get install -y exa fd-find silversearcher-ag

# Credit: https://github.com/btholt/deno-dev-container-example
ENV DENO_INSTALL=/deno
RUN mkdir -p /deno \
    && curl -fsSL https://deno.land/x/install/install.sh | sh 
    #&& chown -R vscode /deno

ENV PATH=${DENO_INSTALL}/bin:${PATH} \
    DENO_DIR=${DENO_INSTALL}/.cache/deno

# [Optional] Uncomment this section to install additional OS packages.
# RUN apt-get update && export DEBIAN_FRONTEND=noninteractive \
#    && apt-get -y install --no-install-recommends <your-package-list-here>