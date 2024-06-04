ARG PYTHON_VERSION=latest

FROM python:${PYTHON_VERSION}

# ENV PROJ_WS=/flask_app
# ENV PROJ_NAME=ztggdemo
# ENV FLASK_APP_WS=${PROJ_WS}/${PROJ_NAME}
ENV FLASK_APP_WS=DockerManagementFlask

# ENV DEMO_NAME=flaskdemo

# WORKDIR ${PROJ_WS}

RUN python --version | tee -a start.log
COPY ./deploy.sh /deploy.sh

EXPOSE 5000

ENTRYPOINT ["sh","deploy.sh"]