#!/bin/bash
## Push the docker images;

ver=$1

nohup docker push steveg53703/epinow2:cran \
    1> out/dockerPush.cran.ver$ver.out     \
    2> out/dockerPush.cran.ver$ver.err

nohup docker push steveg53703/epinow2:github.1.0.0 \
    1> out/dockerPush.github.1.0.0.ver$ver.out     \
    2> out/dockerPush.github.1.0.0.ver$ver.err

nohup docker push steveg53703/epinow2:github.1.1.0 \
    1> out/dockerPush.github.1.1.0.ver$ver.out     \
    2> out/dockerPush.github.1.1.0.ver$ver.err
