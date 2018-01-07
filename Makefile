all: generate.py
	./generate.py cv.yaml -l
	xelatex -output-dir=./build/ ./build/cv.tex
	biber ./build/cv
	xelatex -output-dir=./build/ ./build/cv.tex
	evince cv.pdf


clean:
	rm -rf $(BUILD_DIR)/cv*
