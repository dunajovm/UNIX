# DISTRIBUTION OF PHRED QUALITIES OVER THE WHOLE GENOME AND BY CHROMOSOME
This repository represents a bioinformatic pipeline to carry distribution of PHRED qualities over the genome of Luscinia.


## Runing the pipeline
### Prepare data directory
First we need to get just the data, we are interested in - chromosome, position, quality.

```bash
chmod +x prepare_file.sh

./prepare_file.sh
```
### Filtering the file
Now we have file selected_data.vcf in data directory. There are three columns containing chromosome, position, PHRED quality.
I want to filter the data, as positions with "999" quality don't have any valuable information about the quality. So I want
to get rid of these rows.
