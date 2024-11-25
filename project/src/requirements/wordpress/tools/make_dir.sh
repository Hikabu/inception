#!/bin/bash

if [ ! -d "/home/vfedorov/data" ]; then
	mkdir ~/data
	mkdir ~/data/mariadb
	mkdir ~/data/wordpress
fi

#if data folder is existing in users folder and if no creates neseccery folders congfigs
