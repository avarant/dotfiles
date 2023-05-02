# dotfiles

My dev environment setup and configuration files.

## MacOS

Install [Homebrew](https://brew.sh/)

```bash
/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"
```

Install [iTerm2](https://iterm2.com/)

```bash
brew install --cask iterm2
```

Install [Docker](https://docs.docker.com/desktop/install/mac-install/)

Install packages

```bash
brew install tmux pyenv rbenv nvm rust xz postgresql@12
```

Install python 3.11.2 and set it to global

```bash
pyenv install 3.11.2
pyenv global 3.11.2
```

Install [AWS CLI](https://docs.aws.amazon.com/cli/latest/userguide/getting-started-install.html)

Install [Terraform](https://www.terraform.io/)

```bash
brew tap hashicorp/tap
brew install hashicorp/tap/terraform
```

## Ubuntu

```bash
sudo apt install zsh tmux
```

## Terminal Configuration

install [ohmyzsh](https://ohmyz.sh/#install)

```bash
sh -c "$(curl -fsSL https://raw.github.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"
```

install [powerlevel10k](https://github.com/romkatv/powerlevel10k) theme

```bash
git clone --depth=1 https://github.com/romkatv/powerlevel10k.git ${ZSH_CUSTOM:-$HOME/.oh-my-zsh/custom}/themes/powerlevel10k
```

install [zsh-syntax-highlighting plugin](https://github.com/zsh-users/zsh-syntax-highlighting/blob/master/INSTALL.md) plugin

Clone this repository in oh-my-zsh's plugins directory:

```bash
git clone https://github.com/zsh-users/zsh-syntax-highlighting.git ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-syntax-highlighting
```

install [zsh-autosuggestions](https://github.com/zsh-users/zsh-autosuggestions/blob/master/INSTALL.md#oh-my-zsh) plugin

```bash
git clone https://github.com/zsh-users/zsh-autosuggestions ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-autosuggestions
```

restart zsh

```bash
source ~/.zshrc
```

## Vim

get [onedark.vim](https://github.com/joshdick/onedark.vim) vim color scheme

create `~/.vimrc`

## VSCode

install vscode extensions

```
code --install-extension GitHub.copilot
code --install-extension hashicorp.terraform
code --install-extension mechatroner.rainbow-csv
code --install-extension ms-azuretools.vscode-docker
code --install-extension ms-python.python
code --install-extension ms-python.vscode-pylance
code --install-extension ms-toolsai.jupyter
code --install-extension ms-toolsai.jupyter-keymap
code --install-extension ms-toolsai.jupyter-renderers
code --install-extension ms-toolsai.vscode-jupyter-cell-tags
code --install-extension ms-toolsai.vscode-jupyter-slideshow
code --install-extension ms-vscode-remote.remote-containers
code --install-extension ms-vscode.makefile-tools
code --install-extension redhat.vscode-yaml
code --install-extension vscode-icons-team.vscode-icons
code --install-extension vscodevim.vim
```
