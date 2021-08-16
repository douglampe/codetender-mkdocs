#!/bin/bash
find . | grep -E "^\./components/(.*)/docs$" | while read -r path; do
    folder=$(echo "$path" | sed 's/^.\/components\(.*\)\/docs$/\1/')
    mkdir -p ./docs/components/$folder
    cp -r $path/* ./docs/components/$folder
done