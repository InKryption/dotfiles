# sources:
# * https://github.com/IlanCosman/tide/issues/574
#   * https://github.com/mfilej/dotfiles/blob/fcf057679566eba10da6c80651b5ccc72f7428d3/.config/fish/functions/_tide_item_jj.fish
function __jj_prompt
    jj log --revisions @ --no-graph --ignore-working-copy --color always --limit 1 --template '
        separate(" ",
          change_id.shortest(4),
          bookmarks,
          concat(
            if(conflict, raw_escape_sequence("\x1b[1;31m") ++ "×"),
            if(divergent, "‼️"),
            if(hidden, "👻"),
            if(immutable, "🔒"),
            if(empty, raw_escape_sequence("\x1b[1;32m") ++ "·"),
          ),
          raw_escape_sequence("\x1b[1;90m") ++ if(description.first_line().len() == 0,
            "(no description set)",
            if(description.first_line().substr(0, 29) == description.first_line(),
              description.first_line(),
              description.first_line().substr(0, 29) ++ "…",
            )
          ) ++ raw_escape_sequence("\x1b[0m"),
        )
      '
end

function _tide_item_jj
    jj root &>/dev/null
    and _tide_print_item jj $tide_jj_icon' ' (__jj_prompt)
end
