#!/bin/bash

#set -vn

echo $@ # input parameters
my_array=( "$@" ) # create array from input parameters
#my_arrayLen=${#my_array[@]} # get length of an array
#echo "my_array: " ${my_array[@]}
#echo "my_arrayLen: " $my_arrayLen

# https://www.cyberciti.biz/faq/finding-bash-shell-array-length-elements/
: '
for (( i = 0; i < ${my_arrayLen}; i++ )); do
  echo ${my_array[$i]}
done
'
touch ${my_array[@]} # create all these files from array, for deleting this files use command 'rm file*'
mkdir folder # create a directory with name folder in current directory
mv file* folder/ # move all files to the folder
cd folder # change directory to the folder
ls # print list all files inside the folder

#set +vn