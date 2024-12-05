# Makefile to create the README.md file and run the guessinggame.sh script

# Default target to generate README.md
all: README.md

# Generate README.md file using echo and date command
README.md:
	@echo "# Guessing Game" > README.md
	@echo "Date and Time: $(shell date)" >> README.md
	@echo "Lines of code in guessinggame.sh: $(shell wc -l < guessinggame.sh)" >> README.md
	@echo "" >> README.md
	@echo "This file was generated automatically by the Makefile." >> README.md

# Target to run the guessing game script
run:
	bash guessinggame.sh
