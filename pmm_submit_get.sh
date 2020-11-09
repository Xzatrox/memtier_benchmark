#!/bin/bash
#
cat <<EOF | curl --data-binary @- http://100.27.7.63:9091/metrics/job/memtier
memtier_second $1
memtier_get_bytes $2
memtier_get_latency $3
memtier_get_hits $4
memtier_get_misses $5
EOF
