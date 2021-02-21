# airflow-docker
This repository contains the scripts/configs to run the official Docker image of Airflow via one command line.
- Unlike the Docker image of Airflow from [Puckel](https://github.com/puckel/docker-airflow), the official Docker image of Airflow [link](https://airflow.apache.org/docs/apache-airflow/2.0.1/start/docker.html) does not have the docker-compose configs and airflow configs in one place.
- This repository gathers all the docker-compose and airflow configs in one place for an easier Airflow setup, based on [this](https://airflow.apache.org/docs/apache-airflow/2.0.1/start/docker.html) official Airflow guide.

## Prerequisites: Install Docker and Docker-Compose
- [Docker](https://www.digitalocean.com/community/tutorials/how-to-install-and-use-docker-on-ubuntu-18-04)
- [Docker-Compose](https://docs.docker.com/compose/install/) v1.27.0+

## Set up Airflow on Docker
1. Set the username and password in the environmental variable
    - open ```~/.bashrc``` with your favorite editor and add the following line (change ```airflow``` into your desired username and password)
      ```bash
      export _AIRFLOW_WWW_USER_USERNAME="airflow"
      export _AIRFLOW_WWW_USER_PASSWORD="airflow"
      export _AIRFLOW_WWW_USER_FIRSTNAME="airflow"
      export _AIRFLOW_WWW_USER_LASTNAME="airflow"
      export _AIRFLOW_WWW_USER_EMAIL="airflow@example.com"

2. Run Airflow via the following command
```bash
bash ./run_docker.sh
```

3. Check the Web UI at ```http://localhost:8080``` (local) or ```http://your_ip_address:8080``` (server) and log in using the username and password set in step 1.

4. Use ```./airflow.sh``` to access Python or Bash console
```./airflow.sh bash```
```./airflow.sh python```

5. To stop and delete containers, run
```bash
docker-compose down --volumes --rmi all
```

## Advanced setup
- Airflow config setup
    - The airflow config file is at ```./config/airflow.cfg```. Check out [this](https://airflow.apache.org/docs/apache-airflow/stable/configurations-ref.html) page for more details.

- Python package dependencies
    - Add packages to ```requirements.txt```

Hope you enjoy Airflow!

