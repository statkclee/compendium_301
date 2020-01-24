library(tidyverse)

rmarkdown::render("analysis/report.Rmd", 
                  output_format="html_document",
                  output_file = "report.html",
                  encoding = 'UTF-8', 
                  output_dir = "analysis")