all: index.html index.pdf

index.html: index.Rmd 
	Rscript -e "rmarkdown::render('index.Rmd')"

index.pdf: index.html index.Rmd 
	Rscript -e 'pagedown::chrome_print("index.html")'

clean: 
	rm index.html
