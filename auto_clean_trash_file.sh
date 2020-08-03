#!/bin/bash
find /media/wei/sandisk/.Trash -ctime 7 -type f -name "*" -exec /bin/rm {} \;
