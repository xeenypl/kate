if status is-interactive
    # Start X at login
    if status --is-login
        if test -z "$DISPLAY" -a $XDG_VTNR = 1
            exec startx
        end
    end

    set fish_greeting

    fenv source ~/.profile

    alias ls="exa"
    alias la="exa -la --git --icons"
    alias ll="exa -l  --git --icons"
    alias rm="rm -rvi"
    alias cp="cp -rvi"
    alias mv="mv -vi"
    alias md="mkdir -vp"
end
