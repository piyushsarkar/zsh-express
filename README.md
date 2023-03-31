# ZSH EXPRESS

## Features

- Tab completion
- History traversal using up and down arrow keys

## Installation

### Recommended Installation:

1. Run this command in your terminal, it will install the zsh-express and add it to your `.zshrc` file automatically.

```sh
curl -sS https://raw.githubusercontent.com/piyushsarkar/zsh-express/main/install.sh | sh
```

2. That's it! Restart your terminal and you're good to go.

### Manual Installation:

1. Clone this repository into `~/.zsh`

   ```sh
   git clone https://github.com/piyushsarkar/zsh-express ~/.zsh/zsh-express
   ```

2. Add source path of `zsh-express` inside `~/.zshrc`:

   ```sh
   source ~/.zsh/zsh-express/zsh-express.zsh
   ```

3. Start a new terminal session.

## Uninstallation

1. Remove the `zsh-express` folder

   ```sh
   rm -rf ~/.zsh/zsh-express
   ```

2. Remove `source ~/.zsh/zsh-express/zsh-express.zsh` from `.zshrc`

   ```sh
   echo "$(grep -v "source ~/.zsh/zsh-express/zsh-express.zsh" ~/.zshrc)" > ~/.zshrc
   ```

3. Restart your terminal.
