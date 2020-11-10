#!/bin/bash
#
cat <<EOF | curl --data-binary @- http://10.0.0.215:9091/metrics/job/memtier
memtier_second $1
memtier_set_bytes $2
memtier_set_latency $3
EOF
