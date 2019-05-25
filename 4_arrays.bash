#!/usr/bin/env bash

: '
myArray=("$@")
newArray=("${myArray[@]:1:2}")
arr=(I am "${newArray[@]}" and "$4")

echo "${arr[@]}"
'

epithets=(I am "${@:2:2}" and "${@:4:1}")
echo "${epithets[*]}"