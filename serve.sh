#!/bin/bash
docker run --rm -it -p "8000:8000" -v $(pwd):/mkdocs douglampe/mkdocs:latest mkdocs serve -a 0.0.0.0:8000
