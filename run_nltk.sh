#!/bin/bash

mkdir nltk_data
export NLTK_DATA=$(pwd)/ntlk_data
python -m nltk.downloader all
tar xzf python.tar.gz
export PATH=$(pwd)/python/bin:$PATH
python test.py
