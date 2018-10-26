alias vi=vim
PATH=${PATH}:/opt/custom_tool/

PS1="\u@$(hostname -I | awk '{print $1}') \W ->"
