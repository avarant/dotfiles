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

## Neovim config

Followed https://github.com/josean-dev/dev-environment-files

Then installed a [python language server](https://github.com/neovim/nvim-lspconfig#quickstart)

1. Install a language server, e.g. pyright

`npm i -g pyright`

2. Add the language server setup to your init.lua.

`require'lspconfig'.pyright.setup{}`

### Keymaps

```
-- set leader key to space
vim.g.mapleader = " "

local keymap = vim.keymap -- for conciseness

---------------------
-- General Keymaps
---------------------

-- use jk to exit insert mode
keymap.set("i", "jk", "<ESC>")

-- clear search highlights
keymap.set("n", "<leader>nh", ":nohl<CR>")

-- delete single character without copying into register
keymap.set("n", "x", '"_x')

-- increment/decrement numbers
keymap.set("n", "<leader>+", "<C-a>") -- increment
keymap.set("n", "<leader>-", "<C-x>") -- decrement

-- window management
keymap.set("n", "<leader>sv", "<C-w>v") -- split window vertically
keymap.set("n", "<leader>sh", "<C-w>s") -- split window horizontally
keymap.set("n", "<leader>se", "<C-w>=") -- make split windows equal width & height
keymap.set("n", "<leader>sx", ":close<CR>") -- close current split window

keymap.set("n", "<leader>to", ":tabnew<CR>") -- open new tab
keymap.set("n", "<leader>tx", ":tabclose<CR>") -- close current tab
keymap.set("n", "<leader>tn", ":tabn<CR>") --  go to next tab
keymap.set("n", "<leader>tp", ":tabp<CR>") --  go to previous tab

----------------------
-- Plugin Keybinds
----------------------

-- vim-maximizer
keymap.set("n", "<leader>sm", ":MaximizerToggle<CR>") -- toggle split window maximization

-- nvim-tree
keymap.set("n", "<leader>e", ":NvimTreeToggle<CR>") -- toggle file explorer

-- telescope
keymap.set("n", "<leader>ff", "<cmd>Telescope find_files<cr>") -- find files within current working directory, respects .gitignore
keymap.set("n", "<leader>fs", "<cmd>Telescope live_grep<cr>") -- find string in current working directory as you type
keymap.set("n", "<leader>fc", "<cmd>Telescope grep_string<cr>") -- find string under cursor in current working directory
keymap.set("n", "<leader>fb", "<cmd>Telescope buffers<cr>") -- list open buffers in current neovim instance
keymap.set("n", "<leader>fh", "<cmd>Telescope help_tags<cr>") -- list available help tags

-- telescope git commands (not on youtube nvim video)
keymap.set("n", "<leader>gc", "<cmd>Telescope git_commits<cr>") -- list all git commits (use <cr> to checkout) ["gc" for git commits]
keymap.set("n", "<leader>gfc", "<cmd>Telescope git_bcommits<cr>") -- list git commits for current file/buffer (use <cr> to checkout) ["gfc" for git file commits]
keymap.set("n", "<leader>gb", "<cmd>Telescope git_branches<cr>") -- list git branches (use <cr> to checkout) ["gb" for git branch]
keymap.set("n", "<leader>gs", "<cmd>Telescope git_status<cr>") -- list current changes per file with diff preview ["gs" for git status]

-- restart lsp server (not on youtube nvim video)
keymap.set("n", "<leader>rs", ":LspRestart<CR>") -- mapping to restart lsp if necessary
```

| Keymap                | Function                                               |
| --------------------- | ------------------------------------------------------ |
| :s/pattern/replace/g  | Substitute “pattern” by “replace” on the current line. |
| :%s/pattern/replace/g | Substitute “pattern” by “replace” in the current file. |
| ys motion char        | add char before and after motion                       |
| ds char               | remove char before and after motion                    |
| cs char               | replace char before and after motion                   |
| y motion              | yank                                                   |
| gr motion             | replace motion with clipboard                          |
| gc motion             | toggle comment out motion                              |
| :NvimTreeToggle       | toggle file explorer sidebar                           |
| leader e              | toggle file explorer sidebar                           |
| leader ff             | Find files within directory                            |
| Ctrl k                | Move up filefinder                                     |
| Ctrl j                | Move down filefinder                                   |
| Ctrl q                |                                                        |
| leader fs             | Find string within directory                           |
