process UKB_CHIP {
    //publishDir to create output folder with results
    publishDir "${params.pubDir}/chip", mode: 'copy', pattern: '*vcf.gz'
    input:
    path reference_panel
    path ukb_snp 

    output: path "*_chip.vcf.gz", emit: chip 

    """
    tabix -p vcf "${reference_panel}"
    bcftools view -R "${ukb_snp}" "${reference_panel}" -Oz -o ${reference_panel.simpleName}_${ukb_snp.simpleName}_chip.vcf.gz
    """
}