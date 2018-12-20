#!/bin/bash

dockerId=erdembircan version=$(git describe --tags --abbrev=0) docker-compose $1 $2