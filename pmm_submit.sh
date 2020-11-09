#!/bin/bash
#
cat <<EOF | curl --data-binary @- http://100.27.7.63:9091/metrics/job/memtier
memtier_second $1
memtier_set_ops $2
memtier_set_latency_avg $3
memtier_set_bytes $4
memtier_get_ops $5
memtier_get_latency_avg $6
memtier_get_bytes $7
memtier_get_misses $8
memtier_get_hits $9
memtier_wait_ops ${10}
memtier_wait_latency_avg ${11}
EOF
