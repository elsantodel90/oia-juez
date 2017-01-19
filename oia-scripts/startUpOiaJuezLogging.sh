#!/bin/bash

if [[ "oia-scripts" != "${PWD##*/}" ]]
then
    echo SE DEBE EJECUTAR "$0" DIRECTAMENTE DESDE EL DIRECTORIO oia-scripts QUE LO CONTIENE
    exit
fi

trap "exit" INT # If user manually uses CTRL-C, breaks the whole script
while true
do
	mkdir -p oiaJuezLogs
	cmsLogService >>oiaJuezLogs/"$(date --iso-8601)".log
done
