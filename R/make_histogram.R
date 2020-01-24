library(tidyverse)

word_length_df <- read_delim("processed/histogram.tsv", delim="\t")

word_len_histogram <- word_length_df %>% 
  ggplot(aes(x=n)) +
    geom_histogram(bins = 10)

ggsave("processed/word_len_histogram.png")

