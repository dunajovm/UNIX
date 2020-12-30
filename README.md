# DISTRIBUTION OF READ DEPTHS OVER THE WHOLE GENOME AND BY CHROMOSOME
This repository represents an UNIX code to carry distribution of read depths over the genome of Luscinia.


## Runing the code
### Prepare data directory
First we need to get just the data, we are interested in - chromosome, position, read depth DP.

```bash
chmod +x prepare_file.sh

./prepare_file.sh
```
Now we have selected data in data directory. I will work with prepared_data_genome.tsv while carrying distribution of read depths over the whole genome, then I have prepared_data_1_2_3chrom.tsv file to carry distribution of read depths over the first three chromosomes.  

### Resulting ggplot graph of DP read depth over the whole genome

### Resulting ggplot graph of read depth over the chromosomes
I chose first three chromosomes - chromosome1, chromosome2, chromosome3 and examinated the read depths.

