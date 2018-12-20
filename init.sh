#!/bin/bash

v=$(git describe --tags --abbrev=0)

if [ -z "$v" ];
then
	v="latest"
fi

dockerId=erdembircan version=$v docker-compose $1 $2