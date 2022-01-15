if status is-interactive
    # Start X at login
    if status --is-login
        if test -z "$DISPLAY" -a $XDG_VTNR = 1
            exec startx
        end
    end
    set fish_greeting

    alias ls="exa"
    alias la="exa -al"
    alias ll="exa -l"
    alias rm="rm -rvi"
    alias cp="cp -rvi"
    alias mv="mv -vi"
    alias md="mkdir -vp"
end
