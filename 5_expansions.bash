#!/usr/bin/env bash

RESULT=$(( $1 * ($2 + $3) ))

echo project-$RESULT/{src,dest,test}/{index.js,util.js}

: '
mkdir -p project/{src,dest,test}/
touch project/{src,dest,test}/{index,util}.js
'