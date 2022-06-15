
SRCS := $(filter-out README.md, $(wildcard *.md))
RECIPES := $(SRCS:%.md=%.pdf)

all: ${RECIPES}

%.pdf: %.md
	pandoc $< -o $@

clean:
	rm *.pdf
