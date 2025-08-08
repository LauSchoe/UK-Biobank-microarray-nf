# UKB-chip-nf

Create a UK Biobank Microarray from SNP data (.bim file) and a Reference Panel (.vcf.gz).

## Development
```
git clone https://github.com/LauSchoe/UK-Biobank-microarray-nf.git
cd UK-Biobank-microarray-nf
docker build -t ukb_image . # don't ignore the dot
```

## Run Chip Simulation
```
nextflow run main.nf -c conf/job.config
```
