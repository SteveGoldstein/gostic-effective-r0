#!/bin/bash
## Build docker image;

## The first builds all the shared layers
nohup docker build -t steveg53703/epinow2:cran_noAVX2 -f Dockerfile.cran . 1> dockerBuild.cran.out 2> dockerBuild.cran.err

## The last two just need to rebuild the final layer that installs EpiNow2
nohup docker build -t steveg53703/epinow2:github.1.0.0_noAVX2 -f Dockerfile.github.1.0.0 . 1> dockerBuild.github.1.0.0.out 2> dockerBuild.github.1.0.0.err &
nohup docker build -t steveg53703/epinow2:github.1.1.0_noAVX2 -f Dockerfile.github.1.1.0 . 1> dockerBuild.github.1.1.0.out 2> dockerBuild.github.1.1.0.err &
