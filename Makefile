MODE = None
NAME = v61
all:
ifneq ($(NAME), v61)
	@(find . -type f -name "*" -print0 | xargs -0 sed -i'' -e "s/v61/$(NAME)/g")
	@(mv v61/v61.tex v61/$(NAME).tex)
	@(mv v61 $(NAME))
endif
	$(MAKE) -C $(NAME) MODE=$(MODE)
	cp $(NAME)/build/tex/$(NAME).pdf $(NAME)_rosenbaum_hikade.pdf

plots:
	$(MAKE) -C $(NAME) plot

clean:
	$(MAKE) -C $(NAME) clean

.PHONY: all clean
