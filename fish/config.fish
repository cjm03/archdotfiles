set fish_greeting
#=========#
#=  exa  =#
#=========#
alias ls="exa"
alias la="ls --long --header --icons --all"
#======#
#= fd =#
#======#
alias fd="fd -HI"
#============#
#= redshift =#
#============#
alias rson="redshift -P -O 3500"
alias rsoff="redshift -P -O 6500"
set -gx EDITOR nvim
set -gx LANG en_US.UTF-8


#function y
#	set tmp (mktemp -t "yazi-cwd.XXXXXX")
#	yazi $argv --cwd-file="$tmp"
#	if set cwd (command cat -- "$tmp"); and [ -n "$cwd" ]; and [ "$cwd" != "$PWD" ]
#		builtin cd -- "$cwd"
#	end
#	rm -f -- "$tmp"
#end
