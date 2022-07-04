# General

export ZSH="/Users/fredrikmile/.oh-my-zsh"
ZSH_THEME="gallifrey"
plugins=(git)
source $ZSH/oh-my-zsh.sh

# Exports

# VS Code
export PATH="$PATH:/Applications/Visual Studio Code.app/Contents/Resources/app/bin" 

# .NET Core SDK tools
export PATH="$PATH:/Users/fredrikmile/.dotnet/tools"

# Neovim
export NVM_DIR="$HOME/.nvm"
[ -s "/usr/local/opt/nvm/nvm.sh" ] && \. "/usr/local/opt/nvm/nvm.sh"  # This loads nvm
[ -s "/usr/local/opt/nvm/etc/bash_completion.d/nvm" ] && \. "/usr/local/opt/nvm/etc/bash_completion.d/nvm"  # This loads nvm bash_completion

# Krew
export PATH="${PATH}:${HOME}/.krew/bin"

# Add usage of Kube.ps1 (This shows current ctx and namespace)
source "/usr/local/opt/kube-ps1/share/kube-ps1.sh"
PS1='$(kube_ps1)%2~ $(git_prompt_info)%{%}%B»%b '

# Use fzf
[ -f ~/.fzf.zsh ] && source ~/.fzf.zsh

# Alias
alias nv="nvim"
alias md="nv -c MarkdownPreview"
alias k="kubectl"


# Alias for open rider with specified dir
alias rider="open -na "Rider.app" --args"
[ -f "/Users/fredrikmile/.ghcup/env" ] && source "/Users/fredrikmile/.ghcup/env" # ghcup-env
[ -f /usr/local/etc/profile.d/autojump.sh ] && . /usr/local/etc/profile.d/autojump.sh



