#!/bin/bash

export PYTHONPATH=$PWD/papillote

# score is $1
# optional work dir is $2

if [ -n "$2" ]; then
    WORKDIR=$2
else
    WORKDIR="work"
fi
      
python3 -m papillote \
	--source data/ted.train.bpe.de \
	--target data/ted.train.bpe.en \
	--scores ${1} \
	--db corpus.db \
	--work-dir $WORKDIR \
	--train-valid-source dev/tok/ted_dev_en-de.tok.de \
	--train-valid-target dev/tok/ted_dev_en-de.tok.en
