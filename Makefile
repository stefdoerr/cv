all: generate.py
	./generate.py cv.yaml -l
	xelatex ./build/cv.tex
	evince cv.pdf


clean:
	rm -rf $(BUILD_DIR)/cv*
