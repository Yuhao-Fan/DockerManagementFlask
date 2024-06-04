#!/bin/bash

# LOG_FILE=${PROJ_WS}/start.log

# cd $PROJ_WS

git --version | tee -a ${LOG_FILE}

git clone https://github.com/Yuhao-Fan/DockerManagementFlask.git
ls -l
cd $FLASK_APP_WS
git fetch --all
# git checkout -b $DEMO_NAME origin/$DEMO_NAME

pip install -r requirements.txt

export FLASK_APP=entrypoint.py
export FLASK_ENV=development

flask run --host=0.0.0.0 --port=5000
