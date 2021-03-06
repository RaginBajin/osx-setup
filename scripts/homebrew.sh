# OS X Homebrew (Package Manager) Setup

# Assumes: 
# + GCC installed via XCode comamnd line tools (https://connect.apple.com)

# Install latest Homebrew release (0.9.4 as of July 6, 2013)
###############################################################################
# Homebrew placed under '/usr/local' so package installs don't require sudo.
# Individual brew packages (kegs) isolated in their own directory under 
# '/usr/local/Cellar'
ruby -e "$(curl -fsSL https://raw.github.com/mxcl/homebrew/go)"

# Symlinks to brew package executables located in '/usr/local/bin'. Add this
# location early in the PATH to prefer brew packages over system defaults.
echo -e "\n# Add path to homebrew bin." >> ${HOME}/.bash_profile
echo "PATH=/usr/local/bin:\$PATH" >> ${HOME}/.bash_profile
# brew tap                 # list tapped repositories (taps found in '/usr/local/Library/Taps')
# brew tap/untap tap-name  # additional taps provide more formulas.
# brew update              # brew makes '/usr/local' a DVCS repo. Update it.
# brew search partial-name
# brew install/uninstall/upgrade package-name    # manage a brew Keg.
# brew list                # list installed brew packages.

echo -e "\n# Add homebrew tab completion to bash." >> ${HOME}/.bashrc
echo "source `brew --repository`/Library/Contributions/brew_bash_completion.sh" >> ${HOME}/.bashrc


