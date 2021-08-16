#!/bin/bash
docker run --rm -t -v $(pwd):/mkdocs douglampe/mkdocs:latest mkdocs build
