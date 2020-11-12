#!/bin/bash
#
cat <<EOF | curl --data-binary @- http://10.0.0.215:9091/metrics/job/memtier
    memtier_total_duration_sec $1
    memtier_total_ops_sec $2
    memtier_total_bytes_sec $3
    memtier_total_hits_sec $4
    memtier_total_misses_sec $5
    memtier_total_moved_sec $6
    memtier_total_ask_sec $7
    memtier_total_latency $8
    memtier_total_bytes $9
    memtier_total_ops $10
    memtier_total_set_ops_sec $11
    memtier_total_set_bytes_sec $12
    memtier_total_set_moved_sec $13
    memtier_total_set_ask_sec $14
    memtier_total_set_latency $15
    memtier_total_get_ops_sec $16
    memtier_total_get_bytes_sec $17
    memtier_total_get_moved_sec $18
    memtier_total_get_ask_sec $19
    memtier_total_get_latency $20
EOF
