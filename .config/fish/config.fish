if not status is-interactive
	return
end

set fish_greeting
set SHELL "/usr/bin/fish"
set -gx EDITOR "/usr/bin/nvim"

# aliases
alias ls="eza -x --group-directories-first --icons"
alias la="ls -A"
alias lt="ls --tree"
alias ll="ls -l"
alias lla="ls -lA"
alias cd="z"

alias cat="bat"
alias grep="grep --color=auto"
alias neofetch="hyfetch"
#alias nyafetch="neofetch; catsay -c contemplating \"\0[34mtr\0[35man\0[37ms ri\0[35mgh \0[35mts!\""


alias nyafetch="neofetch; printf \"%str%san%ss ri%sgh%sts!%s\" (set_color 5bcefa) (set_color f5a9b8) (set_color ffffff) (set_color f5a9b8) (set_color 5bcefa) (set_color normal)| catsay -c heart"

alias reloadfc="source ~/.config/fish/config.fish"
alias editfc="nvim ~/.config/fish/"
alias shutdown="shutdown -h now"

alias recenter="cd ~;reloadfc;clear;nyafetch"

# append gem dir to path if missing
fish_add_path (gem env user_gemhome)"/bin"

# prepend cargo dir to path
fish_add_path ~/.cargo/bin


zoxide init fish | source
starship init fish | source
# enable_transience
