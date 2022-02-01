# bioinfo_benchmarker_one

Runs illumina NGS QC and mapping

This pipeline runs a parallel NF pipeline to run fastqc on 94 fastq.gz files

 each fastq.gz file contains 50,000 reads from sample SRR13516428_2.fastq

The pipeline is meant to be used to compare speed in different hardware envs. Mainly, this will help me to make recommendations about new laptops for students.


* Software Prerequisites

#### Software:
| Requirement | Version  | Required Commands * |
|:---------:|:--------:|:-------------------:|
| [Nextflow](https://www.nextflow.io/docs/latest/getstarted.html) | 21.10.5.5658 | nextflow |

## Additional Requirements
(if you want to run as docker)

-Docker latest as of July 2021
-That your user is added to the docker group

### Install and Quick Run

````
git clone https://github.com/Iaguilaror/nf-bioinfo_benchmarker_one
cd nf-bioinfo_benchmarker_one/
bash runtest.sh
````
