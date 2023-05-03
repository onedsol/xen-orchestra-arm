#!/usr/bin/env bash

echo ""
echo "***** Building a new Xen Orchestra ARM (Raspberry Pi) image *****"
#echo "Ctrl+C for Stop. ENTER to continue"
#read ok

docker build --rm=true --no-cache=true  --force-rm=true -t onedsol/xoa-alpine:5.82 .
docker tag onedsol/xoa-alpine:5.82 onedsol/xoa-alpine:latest
cat ./password.txt | docker login --username onedsol --password-stdin
docker push onedsol/xoa-alpine:5.82
docker push onedsol/xoa-alpine:latest
