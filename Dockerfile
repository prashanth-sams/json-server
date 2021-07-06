FROM node:16-alpine

LABEL author="Prashanth Sams"


RUN \
    echo "==> Installing app..."                && \
    npm install -g json-server  && \
    \
    \
    echo "==> Removing unused temp..."         && \
    rm -rf /root/.npm                  \
           /usr/lib/node_modules/npm


# configuration
EXPOSE 3000
VOLUME [ "/data" ]
WORKDIR /data

# command
ENTRYPOINT ["json-server", "--host", "0.0.0.0"]
CMD ["--help"]