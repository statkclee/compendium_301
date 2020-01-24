DATA_DIR = data
REPORT_DIR = analysis
TEMP_DIR = processed

all: $(REPORT_DIR)/report.html 

$(REPORT_DIR)/report.html: R/make_report.R $(TEMP_DIR)/word_len_histogram.png
	Rscript $<

$(TEMP_DIR)/word_len_histogram.png: R/make_histogram.R $(TEMP_DIR)/histogram.tsv
	Rscript $<

$(TEMP_DIR)/histogram.tsv: R/make_dataframe.R $(DATA_DIR)/words.txt
	Rscript $<

$(DATA_DIR)/words.txt: R/download_words.R
	Rscript $<

clean:
	rm -f analysis/*.html analysis/*.md $(TEMP_DIR)/*

.PHONY: clean	
