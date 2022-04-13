#!/bin/bash
hosts=2000
home=$(pwd)
set -u
rm {home}/*dag.* > /dev/null 2>&1
rm {home}/*.flag > /dev/null 2>&1
dagname={home}/"dagFile.dag"
for ProcID in $(seq 0 $(($hosts - 1))); do
  mkdir -p {home}/logs/${ProcID}/
  echo "JOB A${ProcID} ${home}/SubmitFile.sub"
  echo "VARS A${ProcID} ProcID=\"${ProcID}\" home=\"${home}\""
  echo "RETRY A${ProcID} 0"
done > ${dagname}
head -n 6 ${dagname}
tail -n 6 ${dagname}

