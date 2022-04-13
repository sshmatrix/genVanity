#!/bin/bash
set -u
short=0

while [[ "$short" == "0" ]]; do
 if [ -f *.flag ]; then
  echo "address found; terminating jobs"
  condor_rm $1
  short=1
 fi	
done
