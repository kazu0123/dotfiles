export SSH_AUTH_SOCK=$(gpgconf --list-dirs agent-ssh-socket)

export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion

export PATH=$PATH:$HOME/Library/Android/sdk/platform-tools

# Added by LM Studio CLI tool (lms)
export PATH="$PATH:/Users/kazuki/.cache/lm-studio/bin"


export PATH="/opt/homebrew/opt/bison/bin:$PATH"
export PATH="/opt/homebrew/opt/flex/bin:$PATH"
export PATH="/opt/homebrew/opt/llvm@19/bin:$PATH"
export PATH="$(brew --prefix rustup)/bin:$PATH"
export PATH="$HOME/dotfiles/apps/nvm/scripts/macos:$PATH"


export PKG_CONFIG_PATH=$(brew --prefix cairo)/lib/pkgconfig:$PKG_CONFIG_PATH

PATH="/Applications/CMake.app/Contents/bin":"$PATH"

# Added by Hugging Face CLI installer
export PATH="/Users/kazuki/.local/bin:$PATH"
