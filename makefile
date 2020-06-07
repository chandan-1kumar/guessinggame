#
all: readme

readme:
	echo "# Guessinggame project" > README.md
	echo "- The date and time at which make was run is \c" >> README.md
	date -R >> README.md
	echo "- The number of lines of code contained in guessinggame.sh equals \c" >> README.md 
	cat guessinggame.sh | egrep -v -e '^$$' | wc -l | xargs >> README.md

clean: README.md
	rm README.md
