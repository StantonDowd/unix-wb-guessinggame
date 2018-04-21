nano makefile:
.ONESHELL:
all: README.md

README.md: guessinggame.sh
	echo "## This is the guessing game for Unix Workbenbch on Coursera." > README.md
	make_date=$$(ls -l --time-style=long-iso make* | egrep -o "[0-9]+{4}\S+\s[0-9]+\S+")
	echo "- *makefile created $${make_date}*" >> README.md
	line_count=$$(wc -l guessinggame.sh | egrep -o "[0-9]+")
	echo "- *guessinggame.sh contains $${line_count} lines of code*" >> README.md
clean:
	rm README.md
