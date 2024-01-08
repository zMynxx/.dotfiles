
# ^ A shebang isn't required, but allows a justfile to be executed
#   like a script, with `./justfile test`, for example.

set ignore-comments := false
log := "warn"

#############
## Chooser ##
#############
default:
  @just --choose

#############
## Install ##
#############
# Install Stow
install:
  @echo "Installing Stow..."
  brew install stow

###############
## Configure ##
###############
# Run the build command
config:
  @echo "Configuring dotfiles..."


#############
## Symlink ##
#############
# Create a symlink for a given the dotfile
link *FILE:
  @echo "Configuring dotfiles..."
  stow --target $HOME -v {{FILE}}

# Create a symlink for a given the 
link *FOLDER:
  @echo "Configuring folders..."
  stow --dir={{FOLDER}}
