/*
========================================================================================
    LauSchoe/UK-Biobank-microarray-nf
========================================================================================
    Github : https://github.com/LauSchoe/UK-Biobank-microarray-nf
    Author: Laura Schöttle
    ---------------------------
*/

nextflow.enable.dsl = 2

if(params.outdir == null) {
    params.pubDir = "output/${params.project}"
} else {
    params.pubDir = params.outdir
}

include {CHIP_GENERATION} from './workflows/uk-biobank-chip'

workflow {
    CHIP_GENERATION ()
}