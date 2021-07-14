Channel
  .fromPath( 'test/data/*.fastq.gz' )
  .set{ fastqfiles }

Channel
  .fromPath( 'bin/fastqc/fastqc' )
  .set{ fastqc_exe }

process _001_fastqc {

 publishDir "${params.output_dir}/_001_fastqc/",mode:"symlink"

 input:
 file sample from fastqfiles
 file exe from fastqc_exe

 output:
 file "*"

 """
 ./fastqc ${sample}
 """

}
