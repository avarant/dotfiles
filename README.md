# My Dev Environment Files 🚀

My dev environment configuration setup and files.

## Terminal

### macOS only

Install [Homebrew](https://docs.brew.sh/Installation)

Install [iTerm2](https://iterm2.com/)

```
brew install --cask iterm2
```

### install zsh
on ubuntu or debian
```bash
sudo apt install zsh
```

### install [tmux](https://github.com/tmux/tmux/wiki)
on ubuntu or debian
```bash
sudo apt install tmux
```
on macOS
```bash
brew install tmux
```

### install [ohmyzsh](https://ohmyz.sh/#install)
```bash
sh -c "$(curl -fsSL https://raw.github.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"
```

### install [powerlevel10k](https://github.com/romkatv/powerlevel10k) theme
```bash
git clone --depth=1 https://github.com/romkatv/powerlevel10k.git ${ZSH_CUSTOM:-$HOME/.oh-my-zsh/custom}/themes/powerlevel10k
```

### install [zsh-syntax-highlighting plugin](https://github.com/zsh-users/zsh-syntax-highlighting/blob/master/INSTALL.md) plugin
Clone this repository in oh-my-zsh's plugins directory:
```bash
git clone https://github.com/zsh-users/zsh-syntax-highlighting.git ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-syntax-highlighting
```

### install [zsh-autosuggestions](https://github.com/zsh-users/zsh-autosuggestions/blob/master/INSTALL.md#oh-my-zsh) plugin
```bash
git clone https://github.com/zsh-users/zsh-autosuggestions ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-autosuggestions
```

### restart zsh
```bash
source ~/.zshrc
```

## Vim

### get [onedark.vim](https://github.com/joshdick/onedark.vim) vim color scheme


## VSCode

### install vscode extensions

```
code --install-extension esbenp.prettier-vscode
code --install-extension ms-azuretools.vscode-docker
code --install-extension ms-python.python
code --install-extension ms-python.vscode-pylance
code --install-extension ms-toolsai.jupyter
code --install-extension ms-toolsai.jupyter-keymap
code --install-extension ms-toolsai.jupyter-renderers
code --install-extension ms-toolsai.vscode-jupyter-cell-tags
code --install-extension ms-toolsai.vscode-jupyter-slideshow
code --install-extension redhat.vscode-yaml
code --install-extension vscode-icons-team.vscode-icons
code --install-extension vscodevim.vim
code --install-extension zhuangtongfa.material-theme
```
