#!/bin/sh

export GOPATH="$HOME/.local/go"
export GEM_HOME="$(ruby -e 'puts Gem.user_dir')"
export JAVA_HOME='/usr/lib/jvm/default-runtime/'

export XDG_CONFIG_HOME="$HOME/.config/"
export XDG_CACHE_HOME="$HOME/.cache/"
export XDG_DATA_HOME="$HOME/.local/share/"
export XDG_BIN_HOME="$HOME/.local/bin/"

export PATH="$PATH:$GEM_HOME/bin"
export PATH="$PATH:$GOPATH/bin"
export PATH="$PATH:$HOME/.dotnet/tools/"
export PATH="$PATH:$HOME/.nimble/bin/"
export PATH="$PATH:$HOME/.cargo/bin/"
export PATH="$PATH:$HOME/.cabal/bin/"
export PATH="$PATH:$HOME/.local/bin/"
export PATH="$PATH:$HOME/.ghcup/bin/"
export PATH="$PATH:$HOME/.dotnet/tools/"
export PATH="$PATH:/home/xeeny/.nimble/bin/"
export PATH="$PATH:/nix/var/nix/profiles/default/bin/"
export PATH="$PATH:/usr/lib/jvm/default-runtime/bin/"
export PATH="$PATH:/opt/gradle/gradle-7.3.3/bin/"

export NNN_COLORS='1234'
export NNN_PLUG='i:imgview;d:dragdrop'

export GTK_IM_MODULE='fcitx'
export QT_IM_MODULE='fcitx'
export SDL_IM_MODULE='fcitx'
export XMODIFIERS="@im=fcitx"

export EDITOR="nvim"
export BROWSER="qutebrowser"
export SHELL="fish"
export TERMINAL="alacritty"
export PAGER="less"
export DMENU="dmenu"
export MUSIC="$HOME/storage/music"

export LESSHISTFILE=-
