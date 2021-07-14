Channel
  .fromPath( 'test/data/*.fastq.gz' )
  .set{ fastqfiles }

Channel
  .fromPath( 'bin/fastqc/fastqc' )
  .combine(fastqfiles)
  .set{ inputs_001 }

process _001_fastqc {

 publishDir "${params.output_dir}/_001_fastqc/",mode:"symlink"

 input:
 file files from inputs_001

 output:
 file "*"

 """
 ./fastqc *.fastq.gz
 """

}
