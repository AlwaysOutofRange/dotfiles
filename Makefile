TARGET_DIR = /home/nico

PACKAGES = alacritty helix i3 polybar rofi starship zsh

all: stow

stow:
	@for package in $(PACKAGES); do \
		echo "Stowing package: $$package"; \
		stow -t $(TARGET_DIR) $$package; \
	done

unstow:
	@for package in $(PACKAGES); do \
		echo "Unstowing package: $$package"; \
		stow -t $(TARGET_DIR) -D $$package; \
	done

.PHONY: all stow unstow