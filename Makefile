D = data
C = code
R = report
I = images

.PHONY: all data clean

all: $(D)/report.pdf $(D)/eda-output.txt $(D)/regression.RData

data: 
	curl -0 http://www-bcf.usc.edu/~gareth/ISL/Advertising.csv > $(D)/

$(R)/report.pdf: $(R)/report.Rmd $(D)/regression.RData $(I)/scatterplot-tv-sales.png
	pandoc -s $(R)/report.Rmd -o $(R)/report.pdf

$(D)/regression.RData: $(C)/regression-script.R
	$(C)/regression-script.R

$(D)/eda-output.txt: $(C)/eda-script.R
	$(C)/eda-script.R

clean: 
	rm -f $(R)/report.pdf