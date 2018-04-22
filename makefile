nano makefile:
.ONESHELL:
all: README.md

README.md: guessinggame.sh
	echo "## This is the guessing game for The Unix Workbench on Coursera." > README.md
	make_date=$$(date +"%H:%M %D")
	echo "- *makefile was run at $${make_date}*" >> README.md
	line_count=$$(wc -l guessinggame.sh | egrep -o "[0-9]+")
	echo "- *guessinggame.sh contains $${line_count} lines of code*" >> README.md
clean:
	rm README.md
