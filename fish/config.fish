if status is-interactive
    alias dir 'ls --color=auto'
    alias ls 'ls -A --color=auto'
    alias l 'command ls -lAh --color=auto'

    abbr cls clear
    abbr 'cd..' 'cd ..'

    if test -f ~/.fishrc
        source ~/.fishrc
    end
end
