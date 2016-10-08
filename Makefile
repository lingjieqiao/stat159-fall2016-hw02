D = data
C = code
R = report
I = images

.PHONY: all data clean

all: $(R)/report.pdf $(D)/eda-output.txt $(D)/regression.RData

data: 
	curl -0 http://www-bcf.usc.edu/~gareth/ISL/Advertising.csv > $(D)

$(D)/regression.RData: $(C)/regression-script.R
	Rscript $(C)/regression-script.R

$(D)/eda-output.txt: $(C)/eda-script.R
	Rscript $(C)/eda-script.R

$(R)/report.pdf: $(R)/report.Rmd $(D)/regression.RData $(I)/scatterplot-tv-sales.png
	pandoc -s $(R)/report.Rmd -o $(R)/report.pdf

clean: 
	rm -f $(R)/report.pdf