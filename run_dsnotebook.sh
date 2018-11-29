#!/usr/bin/env bash

#EDIT THE FOLLOWING. CHANGE TO YOUR ORGS LICENSE_ID
image="ds_notebook_server"
tag="latest"
share=${PWD}

#EDIT THE FOLLOWING. CHANGE TO YOUR PREFERRED HTTP PORT
port=8888

echo "Stopping DS Notebook"
docker container stop ds_notebookserver
docker rm ds_notebookserver

echo "Starting up DS Notebook"
docker run -d \
      -p $port:$port \
      -v "$share":"/data" \
      --name $image \
      $image:$tag  /bin/bash -c "jupyter notebook \
      --ip 0.0.0.0 --no-browser --allow-root --NotebookApp.token='' \
      --notebook-dir='/data'"

sleep 2

open http://localhost:$port
