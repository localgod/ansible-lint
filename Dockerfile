FROM python:3.12.6-slim-bullseye

ARG BUILD_DATE=""
ARG VCS_REF=""
ARG VERSION=""

LABEL maintainer="https://github.com/localgod/ansible-lint" \
      org.label-schema.schema-version="1.0" \
      org.label-schema.vendor="Localgod" \
      org.label-schema.name="jmeter" \
      org.label-schema.license="MIT" \
      org.label-schema.description="This is a dockerized version of the ansible lint tool. Nothing more, nothing less." \
      org.label-schema.vcs-url="https://github.com/localgod/ansible-lint" \
      org.label-schema.vcs-ref=${VCS_REF} \
      org.label-schema.build-date=${BUILD_DATE} \
      org.label-schema.version=${VERSION} \
      org.label-schema.url="https://github.com/localgod/ansible-lint" \
      org.label-schema.usage="https://github.com/localgod/ansible-lint/blob/master/README.md"

COPY entrypoint.sh /entrypoint.sh
RUN pip install --no-cache-dir ansible-lint==6.22.1 && chmod 755 /entrypoint.sh

ENTRYPOINT ["/entrypoint.sh"]