#!/usr/bin/env bash
image="ds_notebook_server"

docker container stop $image
docker rm $image
