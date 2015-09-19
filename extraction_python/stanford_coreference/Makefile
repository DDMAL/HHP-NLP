output = extraction.txt
input = record.txt

export STANFORD_MODELS := $(models)
export CLASSPATH := $(jar_files)

all:
	python filter_update.py stanford-corenlp-models.jar $(input)
	java -jar openie-assembly.jar --split filtered.txt raw_extraction.txt
	python load.py raw_extraction.txt $(output)

clean:
	rm filtered.txt raw_extraction.txt
