if status is-interactive
    # Commands to run in interactive sessions can go here
    abbr --add in sudo pacman -S
    abbr --add dotfiles /usr/bin/git --git-dir=$HOME/.dotfiles/ --work-tree=$HOME

    keychain --eval --quiet id_ed25519 1>/dev/null
    set -x SSH_AUTH_SOCK /home/mudassir/.keychain/-5qSs7Mp.s 

    fzf --fish | source
    export FZF_CTRL_T_OPTS="
     --walker-skip .git,node_modules,target
     --preview 'bat -n --color=always {}'
     --bind 'ctrl-/:change-preview-window(down|hidden|)'"
    export FZF_CTRL_R_OPTS="
     --bind 'ctrl-y:execute-silent(echo -n {2..} | pbcopy)+abort'
     --color header:italic
     --header 'Press CTRL-Y to copy command into clipboard'"
    export FZF_ALT_C_OPTS="
     --walker-skip .git,node_modules,target
     --preview 'tree -C {}'"
    
     function y
        set tmp (mktemp -t "yazi-cwd.XXXXXX")
        command yazi $argv --cwd-file="$tmp"
        if read -z cwd <"$tmp"; and [ "$cwd" != "$PWD" ]; and test -d "$cwd"
            builtin cd -- "$cwd"
        end
        rm -f -- "$tmp"
    end
    #wal -Rq
    
    zoxide init --cmd cd fish | source
end
