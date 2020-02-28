# This works for merging too
parallel "echo cat {}\_*_R1_001.fastq.gz \> {}\_1.fq.gz" ::: `cat task_samples.txt`
parallel --verbose "cat {}_"\*"_R1_001.fastq.gz > {}_1.fq.gz" ::: `cat task_samples.txt`
