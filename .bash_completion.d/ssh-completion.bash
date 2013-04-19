_complete_ssh_hosts () {
  COMPREPLY=()
  cur="${COMP_WORDS[COMP_CWORD]}"
  comp_ssh_hosts=`
    if [ -f ~/.ssh/config ]; then
      cat ~/.ssh/config |       grep "^Host " |       awk '{print $2}'
    fi
  `
  COMPREPLY=( $(compgen -W "${comp_ssh_hosts}" -- $cur))
  return 0
}
complete -F _complete_ssh_hosts ssh