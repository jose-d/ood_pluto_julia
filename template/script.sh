#!/usr/bin/env bash

#Command Tracing
#set -x

# Benchmark info
echo "TIMING - Starting main script at: $(date)"

# Clean up the modules in working environment
module purge
module load Julia/1.9.3-linux-x86_64

# CD Into Desired Working Directory
if [ -d "$OOD_WD" ]; then
	cd "$OOD_WD" || true
else
	cd "$HOME" || true
fi

$OOD_SR/bin/pluto

