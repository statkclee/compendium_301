library(tidyverse)
library(rmarkdown)

rmarkdown::render("analysis/report.Rmd", 
                  output_format="html_document",
                  output_file = "report.html",
                  encoding = 'UTF-8', 
                  output_dir = "analysis")

rmarkdown::render("analysis/report.Rmd", 
                  output_format = pdf_document(toc=TRUE, latex_engine = 'xelatex',
                                               pandoc_args = c("--variable", "mainfont=NanumGothic")),
                  output_file = "report.pdf",
                  encoding = 'UTF-8', 
                  output_dir = "analysis")

rmarkdown::render("analysis/report.Rmd", 
                  output_format="word_document",
                  output_file = "report.docx",
                  encoding = 'UTF-8', 
                  output_dir = "analysis")