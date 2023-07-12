#!/bin/bash

sequence_read=$1
export PATH=/sratoolkit.3.0.5-ubuntu64/bin/:$PATH

prefetch ${sequence_read}
cd ${sequence_read}
fasterq-dump --split-files ${sequence_read}.sra
tb-profiler profile -1 ${sequence_read}_1.fastq -2 ${sequence_read}_2.fastq -t 1 -p ${sequence_read}
