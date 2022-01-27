# bioinfo_benchmarker_one

* Software Prerequisites

-Docker latest as of July 2021
-That your user is added to the docker group

Runs illumina NGS QC and mapping

This pipeline runs a parallel NF pipeline to run fastqc on 94 fastq.gz files

 each fastq.gz file contains 50,000 reads from sample SRR13516428_2.fastq

The pipeline is meant to be used to compare speed in different hardware envs. Mainly, this will help me to make recommendations about new laptops for students.
