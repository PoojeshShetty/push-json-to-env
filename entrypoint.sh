#!/bin/bash
set -e

json_string=${INPUT_JSON_VALUE} 
variable_name=${INPUT_VARIABLE_NAME}
fileName=${variable_name}.json
# echo "${json_string}"

mkdir action-json

cd action-json

echo "${json_string}" >> "${fileName}"

#set github env 
echo "${variable_name}=$(readlink -f ${fileName})" >> $GITHUB_ENV