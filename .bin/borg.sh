#!/bin/bash

# initialize
HOSTNAME=$(/bin/hostname)
DATE=$(/bin/date +"%Y%m%d_%H%M")
REPOSITORY="kaz-work@back.lycoris.com:arch.kaz-work.com"
KEEPDAYS=7
KEEPWEEKS=4
BACKUPLIST=("/home" "/etc" "/usr")
EXCLUDELIST=("*/.cache")
LOG=$(mktemp)

if [ -d ${REPOSITORY} ]; then exit 1; fi

# borg backup
logger -t $(basename ${0}) "borg started."

borg create -s -e ${EXCLUDELIST} ${REPOSITORY}::${HOSTNAME}_${DATE} ${BACKUPLIST} > ${LOG} 2>&1

code=$?
if [ ${code} -ne 0 ]; then logger -t $(basename ${0}) "borg create aborted."; fi

borg prune -v --list --keep-daily=${KEEPDAYS} --keep-weekly=${KEEPWEEKS} ${REPOSITORY} >> ${LOG} 2>&1

code=$?
if [ ${code} -ne 0 ]; then logger -t $(basename ${0}) "borg prune aborted."; fi
logger -t $(basename ${0}) "$(cat ${LOG})"
logger -t $(basename ${0}) "borg finished."
rm -rf ${LOG}

exit 0
