setwd('~/projects/homework/DPdistribution/data')
read_tsv("prepared_data_genome.tsv",
         col_names=c("chrom", "pos", "DP")) ->
  d
library(tidyverse)

#ploting the read depths over the whole genome
d %>%
  ggplot(aes(pos, DP)) +
  geom_point(size=0.1, alpha=1/10) + geom_smooth() +
  xlab('Position') + ylab('Read depth') + ggtitle('Distribution of read depths over the whole genome')

#ploting the read depths of first three chromosomes - chr1, chr2, chr3

read_tsv("prepared_data_1_2_3chrom.tsv", col_names=c("chrom", "pos", "DP")) ->
  n

n %>%
  group_by(chrom) %>%
  mutate(POS_block = plyr::round_any(pos, 1e3)) ->
  dc

n %>%
  ggplot(aes(pos, DP))  + 
  geom_point( size = 0.1, alpha = 1/2) + #geom_line(colour = 'blue') +
  facet_wrap(~chrom, ncol = 1) +
  xlab('Position') + ylab('Read depth') + ggtitle('Distribution of read depths over the chromosomes')
