#!/bin/bash

sudo podman build --tag docker.io/diehlpk/parallelbook:latest -f ./Dockerfile
sudo podman login docker.io
id=$(sudo podman inspect --format="{{.Id}}" docker.io/diehlpk/parallelbook:latest)
sudo podman push $id docker://diehlpk/parallelbook:latest
