#!/bin/bash

unstable:
	tar -zcvf ./pdf-unstable.tar.gz ./pdf-unstable/*
	tar -zcvf ./latex-unstable.tar.gz ./latex-unstable/*
	
merge:
	cp ./latex-unstable/* ./latex-stable/
	cp ./pdf-unstable/* ./pdf-stable/
	
stable:
	tar -zcvf ./everything.tar.gz ./pdf-stable/* ./latex-stable/*
	
clean:
	rm ./pdf-unstable.tar.gz
	rm ./latex-unstable.tar.gz
	rm ./everything.tar.gz