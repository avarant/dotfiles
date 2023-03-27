# My Dev Environment Files 🚀

My dev environment configuration setup and files.

## Terminal

### macOS only

Install [Homebrew](https://docs.brew.sh/Installation)

Install [iTerm2](https://iterm2.com/)

```
brew install --cask iterm2
```

### install neovim

on macOS

```bash
brew install neovim
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

## Homebrew packages

terraform: Terraform
neovim: Ambitious Vim-fork focused on extensibility and agility
postgresql@12: Object-relational database system
pyenv: Python version management
rbenv: Ruby version manager
rust: Safe, concurrent, practical language
tmux: Terminal multiplexer
xz: General-purpose data compression with high compression ratio

## Vim

### get [onedark.vim](https://github.com/joshdick/onedark.vim) vim color scheme

## VSCode

### install vscode extensions

```
code --install-extension asvetliakov.vscode-neovim
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
code --install-extension zhuangtongfa.material-theme
```

## Neovim

Followed https://github.com/josean-dev/dev-environment-files

Then installed a [python language server](https://github.com/neovim/nvim-lspconfig#quickstart)

On Ubuntu

```
sudo apt-get install nvim
npm i -g tree-sitter cli
```

### Keymaps

| Keymap                | Function                                                                                     |
| --------------------- | -------------------------------------------------------------------------------------------- |
| jk                    | Esc                                                                                          |
| leader nh             | clear search highlights                                                                      |
| x                     | delete single char without copying into register                                             |
| leader +              | increment                                                                                    |
| leader -              | decrement                                                                                    |
| leader sv             | split vertically                                                                             |
| leader sh             | split horizontally                                                                           |
| leader sx             | close split                                                                                  |
| leader se             | make split windows equal width & height                                                      |
| leader to             | new tab                                                                                      |
| leader tx             | close tab                                                                                    |
| leader tn             | next tab                                                                                     |
| leader tp             | previous tab                                                                                 |
| :s/pattern/replace/g  | Substitute “pattern” by “replace” on the current line.                                       |
| :%s/pattern/replace/g | Substitute “pattern” by “replace” in the current file.                                       |
| ys motion char        | add char before and after motion                                                             |
| ds char               | remove char before and after motion                                                          |
| cs char               | replace char before and after motion                                                         |
| y motion              | yank                                                                                         |
| gr motion             | replace motion with clipboard                                                                |
| gc motion             | toggle comment out motion                                                                    |
| :NvimTreeToggle       | toggle file explorer sidebar                                                                 |
| leader e              | toggle file explorer sidebar                                                                 |
| leader ff             | Find files within directory                                                                  |
| Ctrl k                | Move up filefinder                                                                           |
| Ctrl j                | Move down filefinder                                                                         |
| Ctrl q                |                                                                                              |
| leader fs             | find string in current working directory as you type                                         |
| leader fc             | find string under cursor in current working directory                                        |
| leader fb             | list open buffers in current neovim instance                                                 |
| leader fh             | list available help tags                                                                     |
| leader gc             | list all git commits (use <cr> to checkout) ["gc" for git commits]                           |
| leader gfc            | list git commits for current file/buffer (use <cr> to checkout) ["gfc" for git file commits] |
| leader gb             | list git branches (use <cr> to checkout) ["gb" for git branch]                               |
| leader gs             | list current changes per file with diff preview ["gs" for git status]                        |
| m char                | set mark at location                                                                         |
| ` char                | go to mark location                                                                          |
| ' char                | go to the beginning of the line containing the char mark                                     |
| y ` mark              | yank from current cursor location to mark location                                           |
