#!/bin/bash
all: README.md
README.md: guessinggame.sh
	touch README.md
	echo "Name : guessinggame" > README.md
	echo $$(date) >> README.md
	wc -l guessinggame.sh | egrep -o "[0-9]+" >> README.md
clean:
	rm README.md
