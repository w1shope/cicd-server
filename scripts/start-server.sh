#!/bin/bash

echo "--------------- 서버 배포 시작 -----------------"
docker stop cicd-server || true
docker rm cicd-server || true
docker pull 851725519056.dkr.ecr.ap-northeast-2.amazonaws.com/cicd-server:latest
docker run -d --name cicd-server -p 8080:8080 851725519056.dkr.ecr.ap-northeast-2.amazonaws.com/cicd-server:latest
echo "--------------- 서버 배포 끝 -----------------"