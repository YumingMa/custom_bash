alias vi=vim
#filter ctags and cscope symbols
alias grep='grep --color --exclude="tags" --exclude="cscope.out" --exclude="cscope.in.out"'
PATH=${PATH}:/opt/custom_tool/

#custom PS1
PS1="\u@$(hostname -I | awk '{print $1}') \W ->"
