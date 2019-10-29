alias vi=vim
#filter ctags and cscope symbols
alias grep='grep --color --exclude="tags" --exclude="cscope.out" --exclude="cscope.in.out"'
PATH=${PATH}:/opt/custom_tool:/opt/platform-tools:/opt/android-ndk-r19c/my-toolchain/bin

#custom PS1
export PS1="\[\033[32m\]\u@$(hostname -I | awk '{print $1}'):\w $(git symbolic-ref --short -q HEAD 2>/dev/null) \[\033[m\]\n->"
export RTE_SDK=/root/mayuming/dpdk-stable-17.11.4
export RTE_TARGET=build


if [ -f ~/.git-completion.bash ]; then
    source ~/.git-completion.bash
fi
