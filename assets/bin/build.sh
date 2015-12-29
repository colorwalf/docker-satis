#!/bin/bash

# Load packages
if [ -e "$WORK_DIRECTORY/satis.json" ]; then

    # Create directory mirror
    if [ ! -d "$WORK_DIRECTORY/mirror" ]; then
        mkdir $WORK_DIRECTORY/mirror
    fi

    php $SATIS_DIRECTORY/bin/satis build $WORK_DIRECTORY/satis.json $WORK_DIRECTORY/mirror 2>&1 | tee -a /var/log/satis-`date +%Y%m%d-%I%M%S `.log
fi
