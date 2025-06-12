# 💻 Kevin Wolf's Dotfiles

## What is this?

A set of shell scripts used to setup a new OSX system using opinionated tools and conventions.

## Pre-requisites

This setup uses [Oh My ZSH](https://ohmyz.sh) with [Starship](https://starship.rs) as the prompt. Make sure to configure your terminal to use a [Nerd Font](https://www.nerdfonts.com/) for the best experience.

## Usage

1. Clone this repo: `git clone --recursive https://github.com/elkevinwolf/dotfiles`
2. Run the setup script: `sh install.sh`
3. Enjoy your new setup! 🍻

## Installation Structure

The installation process is divided into three main components, each with its own interactive prompt:

### 1. Oh My ZSH Setup (`oh-my-zsh/install.sh`)
- Downloads and installs Oh My ZSH
- Configures custom theme and plugins
- Sets up `.zshrc` configuration

### 2. Binaries Installation (`bin/install.sh`)
- Installs Homebrew (if not present)
- Installs command-line tools and utilities
- Configures Git and Starship prompt

### 3. Applications Installation (`apps/install.sh`)
- Installs desktop applications via Homebrew Cask
- GUI applications for productivity and development

## What's included

### Binaries

The following binaries will be installed and made available for immediate use:

- [`bat`](https://github.com/sharkdp/bat) - A cat(1) clone with syntax highlighting and Git integration
- [`brew`](https://brew.sh/index_es) - Package manager for macOS
- [`bun`](https://bun.sh) - Fast all-in-one JavaScript runtime
- [`gh`](https://cli.github.com) - GitHub CLI
- [`git-delta`](https://github.com/dandavison/delta) - Syntax-highlighting pager for git
- [`jq`](https://stedolan.github.io/jq) - Command-line JSON processor
- [`starship`](https://starship.rs) - Cross-shell prompt
- [`tree`](http://mama.indstate.edu/users/ice/tree) - Directory tree viewer

### Apps

Additionally, if running on OSX, the following apps will be installed:

- [1Password](https://1password.com) - Password manager
- [Arc](https://arc.net) - Modern web browser
- [Cursor](https://cursor.com) - AI-powered code editor
- [Discord](https://discord.com) - Communication platform
- [Ghostty](https://ghostty.org) - Fast terminal emulator
- [OrbStack](https://orbstack.dev) - Docker & Linux VMs
- [Raycast](https://raycast.com) - Productivity launcher
- [Spark](https://sparkmailapp.com) - Email client
- [Vanilla](https://matthewpalmer.net/vanilla) - Menu bar organizer
- [WhatsApp](https://whatsapp.com) - Messaging app

### Oh my ZSH

Oh my ZSH will be downloaded and installed with the following configuration:

#### Theme

- [Starship](https://starship.rs) - A minimal, blazing-fast, and infinitely customizable prompt

#### Plugins

- [`git`](https://github.com/ohmyzsh/ohmyzsh/tree/master/plugins/git)
- [`zsh-autosuggestions`](https://github.com/zsh-users/zsh-autosuggestions.git)
- [`zsh-completions`](https://github.com/zsh-users/zsh-completions.git)
- [`zsh-syntax-highlighting`](https://github.com/zsh-users/zsh-syntax-highlighting.git)

#### Aliases

##### From plugins

- [`git` plugin aliases](https://github.com/ohmyzsh/ohmyzsh/tree/master/plugins/git#aliases)

##### General

| alias    | description                                                             | usage             |
| -------- | ----------------------------------------------------------------------- | ----------------- |
| `reload` | reload the terminal (useful when changing terminal init configurations) | `reload`          |
| `mcd`    | create a directory and `cd` into it                                     | `mcd my-dir-name` |
| `dev`    | change to developer directory (`~/Developer`)                           | `dev`            |

#### Git

| alias   | description                                               | usage                      |
| ------- | --------------------------------------------------------- | -------------------------- |
| `gpb`   | checkout previous active branch                           | `gpb`                      |
| `gac`   | stage all files and commit with a message                 | `gac "my commit message"`  |
| `gacp`  | stage all files, commit with a message and push           | `gacp "my commit message"` |
| `gac!`  | stage all files and overwrite previous commit             | `gac!`                     |
| `gacp!` | stage all files, overwrite previous commit and force-push | `gacp!`                    |
