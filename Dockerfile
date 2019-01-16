ARG BASE_CONTAINER=jupyter/minimal-notebook
FROM $BASE_CONTAINER

#USER root

RUN wget -qO- https://raw.githubusercontent.com/creationix/nvm/v0.34.0/install.sh | bash && \
    export NVM_DIR="$HOME/.nvm" && \
    [ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh" && \
    nvm install 8.10.0 && \
    npm install -g ijavascript && \
    ijsinstall

COPY start-notebook-with-ijavascript.sh /usr/local/bin/

CMD ["start-notebook-with-ijavascript.sh"]
