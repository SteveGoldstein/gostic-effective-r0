#!/bin/bash
## Build docker image;

ver=$1
## The first builds all the shared layers
nohup docker build -t steveg53703/epinow2:cran -f Dockerfile.cran . \
    1> out/dockerBuild.cran.ver$ver.out \
    2> out/dockerBuild.cran.ver$ver.err

## The last two just need to rebuild the final layer that installs EpiNow2
nohup docker build -t steveg53703/epinow2:github.1.0.0 -f Dockerfile.github.1.0.0 . \
    1> out/dockerBuild.github.1.0.0.ver$ver.out \
    2> out/dockerBuild.github.1.0.0.ver$ver.err

nohup docker build -t steveg53703/epinow2:github.1.1.0 -f Dockerfile.github.1.1.0 . \
    1> out/dockerBuild.github.1.1.0.ver$ver.out \
    2> out/dockerBuild.github.1.1.0.ver$ver.err
