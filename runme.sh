#!/bin/bash

export PYTHONPATH=$PWD/papillote

# Fix the validation set later!
python3 -m papillote \
	--source data/ted.train.bpe.de \
	--target data/ted.train.bpe.en \
	--scores ${1} \
	--db corpus.db \
	--work-dir work \
	--train-valid-source dev/tok/ted_dev_en-de.tok.de \
	--train-valid-target dev/tok/ted_dev_en-de.tok.en
