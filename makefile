# File: makefile

all: README.md

README.md: guessinggame.sh
	echo "# Guessing Game Project" > README.md
	echo "" >> README.md
	echo "## Date and Time of Make Run" >> README.md
	echo "$$(date)" >> README.md
	echo "" >> README.md
	echo "## Number of Lines in guessinggame.sh" >> README.md
	wc -l < guessinggame.sh >> README.md

clean:
	rm -f README.md
