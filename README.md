# How to use
Prepare venv under work directory
```bash
python3 -m venv venv
```

Activate the interpretor in project
```bash 
source venv/bin/activate
```

Install dependencies from pypi
```bash 
pip install -r requirements.txt
```

Start mongo db docker container
```bash 
docker run -d -p 30001:27017 -v /your_host_machine_dir:/data/db --hostname ztgg_mongo  --name=ztgg_mongo mongo
```


Run flask app
```bash
source startup.env
flask run
```

Each time you get in project VS code(IDE), need to pull the latest code, activate venv and app_env, install the latest dependencies added by peer
```bash
git pull
source venv/bin/activate
pip install -r requirements.txt
source startup.env
flask run
```

docker run -d -P --rm --name=ztgg-mongo-c mongo:latest
docker logs -f ztgg-mongo-c

python3.9 -m venv
source venv/bin/activate


export RUN_ENV=development
ifconfig | grep 192             

export ZTGG_DOMAIN=192.168.4.24 
export FLASK_APP=entrypoint.py

export DB_PORT=55000

export FLASK_ENV=development
flask run --host=0.0.0.0 --port=30002


docker run -p 5000:5000 flask-app

python --version
docker build -t ztgg-flask-img:1.0 --build-arg=PYTHON_VERSION=3.11.9 .

docker run -it -P --rm --name=ztgg-flask-c -e FLASK_ENV=development -e FLASK_APP=entrypoint.py -e RUN_ENV=development -e ZTGG_DOMAIN=192.168.4.24 -e DB_PORT=55000 ztgg-flask-img:1.0

docker run -it -P --rm --name=ztgg-test-restful-c -e FLASK_ENV=development -e FLASK_APP=entrypoint.py -e RUN_ENV=development -e ZTGG_DOMAIN=192.168.4.24 -e DB_PORT=55000 ztgg-test-restful-demo-img:1.0
