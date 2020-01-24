library(tidyverse)

dir.create("processed")

words_df <- read_csv("data/words.txt", col_names=FALSE)

words_df %>% 
  set_names("word") %>% 
  mutate(word_len = str_length(word)) %>% 
  count(word_len) %>% 
  write_delim("processed/histogram.tsv", delim="\t")

