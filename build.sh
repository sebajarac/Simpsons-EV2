#!/bin/bash
docker build -t simpson-app .
docker stop simpsonrunning 2>/dev/null  true
docker rm simpsonrunning 2>/dev/null  true
docker run --name simpsonrunning simpson-app