#!/bin/bash

docker run --rm \
  -it \
  --name devtest \
  --mount type=bind,source="$(pwd)"/stack-badge-io,target=/stack-badge-io \
  rocker/tidyverse \
  /bin/bash

