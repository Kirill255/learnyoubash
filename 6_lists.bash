#!/usr/bin/env bash

$1 || echo "First parameter is false."
$2 && echo "$PWD"
$3 && ls || echo "Third parameter is false."

: '
$1 || echo "First parameter is false."
$2 && pwd
$3 && ls || echo "Third parameter is false."
'

: '
ls -l | grep .md$
'