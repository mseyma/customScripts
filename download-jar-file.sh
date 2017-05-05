#! /bin/bash

usage() {
    echo ""
    echo "Usage: sudo -E bash downlaod-jar-file.sh <name-to-use-for-jar> <jar-file-download-uri>" ;
    exit 132;
}

#validate user input
if [ -z "$1" ]
    then
        usage
        echo "Jar file name must be provided."
        exit 137
fi

if [ -z "$2" ]
    then
        usage
        echo "Jar file download URI must be speicfied."
        exit 138
fi

JARFILENAME=$1
JARDOWNLOADURI=$2

wget "$JARDOWNLOADURI" -O $JARFILENAME