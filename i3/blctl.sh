#!/bin/sh

CONFIG=/home/mandy/.config/i3/bl

# Initialize amount
INC=0
DEC=0
SET=0

CURR=$(cat $CONFIG)

while getopts i:d:s option
do
    case "${option}"
        in
        i)
            INC=1
            AMT=${OPTARG}
            ;;
        d)
            DEC=1
            AMT=${OPTARG}
            ;;
        s)
            SET=1
            ;;
    esac
done

if [ $INC -eq 1 ]
then
    CURR=`expr $CURR + $AMT`
elif [ $DEC -eq 1 ]
then
    if [ $CURR -lt $AMT ]
    then
        CURR=0
    else
        CURR=`expr $CURR - $AMT`
    fi
elif [ $SET -eq 1 ]
then
    DO_NOTHING=0
else
    exit
fi

echo "NEW BACKLIGHT: $CURR"

$(echo $CURR > $CONFIG)
$(xbacklight -set $CURR)
