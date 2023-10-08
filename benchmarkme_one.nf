/* Inititate DSL2 */
nextflow.enable.dsl=2

process _001_fastqc {

 publishDir "${params.output_dir}/_001_fastqc/",mode:"move"

 input:
 file files from inputs_001

 output:
 file "*"

 """
 ./fastqc --threads 1 *.fastq.gz
 """

}

workflow {

     main:

    fastqfiles =  Channel.fromPath( 'test/data/*.fastq.gz' )
    inputs_001 =  Channel.fromPath( 'bin/fastqc/fastqc' ).combine( fastqfiles )

    _001_fastqc( inputs_001 )

}
