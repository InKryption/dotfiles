if status is-interactive
    alias ls 'ls -A --color=auto'
    abbr l 'ls -lah'

    abbr cls clear
    abbr 'cd..' 'cd ..'

    if test -f ~/.fishrc
        source ~/.fishrc
    end
end
