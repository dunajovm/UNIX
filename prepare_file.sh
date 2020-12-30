# Prepare file to work with to the same directory
# Unpacking, changing to vcf file

IN=/data-shared/vcf_examples/luscinia_vars.vcf.gz

# Looking inside the file

# zcat $IN | less -S

# Cut off all lines starting with '##'

# cat $IN | grep -v '^##' | less -S

# Now I need to pick only valuable data - read depth, position and name of the chromosome
# It means, I need to pick 1st, 2nd and 8th column only. Thought 8th column is very noisy, so I will
# work with it separately later and first will pick only chrom and pos column.

mkdir data
zcat $IN | grep -v '^##' | cut -f1,2 | grep -v '^#' > data/chrom_pos.vcf

# And now I will get just read depth info in separate file

zcat $IN | grep -v '^##' | cut -f8 | egrep -o 'DP=[^;]*' | sed 's/DP=//' > data/read_depths.vcf

# then I need to put these things together and save it to separate file
# paste data/chrom_pos.vcf data/read_depths.vcf | less -S

paste data/chrom_pos.vcf data/read_depths.vcf > data/prepared_data_genome.tsv

# I will also make file with only chromosomes 1,2,3 to read read depths only from these chromosomes
< data/prepared_data_genome.tsv grep '^chr[1-3]\s' > data/prepared_data_1_2_3chrom.tsv

