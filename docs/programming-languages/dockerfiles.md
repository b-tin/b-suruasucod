---
sidebar_position: 2
---

# Dockerfile For Programming Languages

## Python

```dockerfile
FROM python:3.9.18-bookworm

ENV USER_NON_ROOT btin

RUN pip install --upgrade pip

# Create non-root user
RUN groupadd --gid 1001 $USER_NON_ROOT \
    && adduser --shell /bin/sh --uid 1001 --gid 1001 $USER_NON_ROOT \
    && mkdir -p /app /var/log/$USER_NON_ROOT \
    && chown -R $USER_NON_ROOT:$USER_NON_ROOT /app /var/log/$USER_NON_ROOT

WORKDIR /app

USER $USER_NON_ROOT

COPY --chown=$USER_NON_ROOT:$USER_NON_ROOT requirements.txt requirements.txt
RUN pip3 install --user -r requirements.txt
ENV PATH $PATH:/home/$USER_NON_ROOT/.local/bin

COPY --chown=$USER_NON_ROOT:$USER_NON_ROOT . .

# Non-root user can not run with port < 1024
EXPOSE 8080

RUN chmod +x entrypoint.sh
CMD /app/entrypoint.sh
```