from alpine:latest

#Set version and SHA
ENV TRAEFIK_VERSION v1.0.3
ENV TRAEFIK_URI=https://github.com/containous/traefik/releases/download/

RUN apk add --update curl && \
    rm -rf /var/cache/apk/*

RUN curl --fail --silent --show-error --location --remote-name ${TRAEFIK_URI}${TRAEFIK_VERSION}/traefik && chmod +x /traefik

ENTRYPOINT ["/traefik"]
