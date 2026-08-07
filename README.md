# dotfiles

## Bootstrap — macOS

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

## Bootstrap — Fedora

```sh
sudo dnf install -y chezmoi
sudo -v

chezmoi init --apply ertugruldasgin

chsh -s $(which zsh)
exec zsh

gh auth login
chezmoi apply -v
```

