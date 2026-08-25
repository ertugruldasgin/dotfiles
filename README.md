# dotfiles

## macOS

```sh
xcode-select --install

/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"
eval "$(/opt/homebrew/bin/brew shellenv)"
brew install chezmoi

chezmoi init --apply ertugruldasgin

chsh -s $(which zsh)
exec zsh

gh auth login
chezmoi apply -v
```

## Fedora

```sh
sudo dnf install -y chezmoi
sudo -v

chezmoi init --apply ertugruldasgin

chsh -s $(which zsh)
exec zsh

gh auth login
chezmoi apply -v
```

## Ubuntu / 42 (no root)

```sh
sh -c "$(curl -fsLS get.chezmoi.io)" -- -b ~/.local/bin
export PATH="$HOME/.local/bin:$PATH"

curl -LO https://github.com/neovim/neovim/releases/download/stable/nvim-linux-x86_64.tar.gz
tar xzf nvim-linux-x86_64.tar.gz -C ~/.local --strip-components=1
rm nvim-linux-x86_64.tar.gz

chezmoi init --apply ertugruldasgin

exec zsh
```
