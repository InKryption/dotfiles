if status is-interactive
    alias ls 'ls -lh --color=auto'
    alias l 'command ls -lAh --color=auto'

    abbr cls clear
    abbr 'cd..' 'cd ..'

    set -l version_as_num (string replace '.' '' $version --all)
    if test $version_as_num -lt 430
        echo "Warning: fish version $version is < 4.3.0"
    end
end

if test -f ~/.fishrc
    source ~/.fishrc
end
