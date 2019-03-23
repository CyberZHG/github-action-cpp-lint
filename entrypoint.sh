#!/usr/bin/env bash
if [[ $# -ne 0 ]]; then
    command="cpplint $@"
    echo ${command}
    ${command}
else
    folders=("include" "includes" "src" "source" "sources" "test" "tests")
    for folder in "${folders[@]}"
    do
        if [[ -d ${folder} ]]; then
            command="cpplint --recursive ${folder}/*"
            echo ${command}
            ${command}
        fi
    done
fi
