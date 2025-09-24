if status is-interactive
    alias ls 'ls -lh --color=auto'
    alias l 'command ls -lAh --color=auto'

    abbr cls clear
    abbr 'cd..' 'cd ..'
end

if test -f ~/.fishrc
    source ~/.fishrc
end
