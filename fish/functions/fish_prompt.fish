# name: L
function _git_branch_name
  echo (command git symbolic-ref HEAD 2> /dev/null | sed -e 's|^refs/heads/||')
end

function _is_git_dirty
  echo (command git status -s --ignore-submodules=dirty 2> /dev/null)
end

function fish_prompt
  set -l blue (set_color blue)
  set -l green (set_color -o 00B33C)
  #set -l green (set_color green)
  set -l normal (set_color normal)
  #set -l cyan (set_color -o 00CCFF)
  set -l cyan (set_color normal)
  set -l magenta (set_color FF00FF)
  #set -l magenta (set_color magenta)

  set -l arrow "λ"
  set -l cwd $cyan(basename (prompt_pwd))
  #set -l cwd $blue(basename (prompt_pwd))
  set -l username $cyan(whoami)
  set -l host $cyan(hostnamectl | grep -w "Static hostname:" | cut -c 19-)
  #set -l host $green(hostnamectl | grep -w "Static hostname:" | cut -c 19-)

  if [ (_git_branch_name) ]
    set git_info $green(_git_branch_name)
    set git_info ":$git_info"

    if [ (_is_git_dirty) ]
      set -l dirty "*"
      set git_info "$git_info$dirty"
    end
  end
  echo -n -s $username $normal '@' $host $normal '::' $cwd $git_info $normal ' ' $magenta $arrow ' '
  #echo -n -s $username $normal '@' $host $normal '::' $cwd $git_info $normal ' ' $magenta $arrow ' '
  #eecho -n -s $username $normal '@' $host $normal '::' $cwd $git_info $normal ' ' $magenta $arrow ' 'cho -n -s $username $normal '@' $host $normal '::' $cwd $git_info $normal ' ' $magenta $arrow ' '
end
