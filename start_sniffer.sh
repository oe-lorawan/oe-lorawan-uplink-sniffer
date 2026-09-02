#!/bin/bash
set -o pipefail
cd /opt/lora_gateway/util_pkt_logger

# Run the sniffer and pipe (|) its output to the mosquitto publisher.
# The '-l' flag tells mosquitto to read the output line-by-line.
./util_pkt_logger | mosquitto_pub -h 164.30.6.180 -p 1883 -t "lorawan/sniffer/uplink" -l
