FROM bitnami/kubectl:1.16.13

LABEL maintainer "DreamPathsProjekt <dream.paths.projekt@gmail.com>"

COPY init-kubectl /opt/sinlead/kubectl/bin/

USER root

ENV PATH="/opt/sinlead/kubectl/bin:/opt/bitnami/kubectl/bin:$PATH"

ENTRYPOINT ["init-kubectl"]

# CMD ["--help"]
