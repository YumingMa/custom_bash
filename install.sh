#!/bin/bash

set -u -e


###############################################################
#               functuion definations
###############################################################
function echoRedChar()
{
    printf "\033[1;31;40m$* \033[0m\n"
}

function echoGreenChar()
{
    printf "\033[1;32;40m$* \033[0m\n"
}

function echoWhiteChar()
{
    printf "\033[1;37;40m$* \033[0m\n"
}

function err()
{
	echoRedChar $*
	exit -1
}
function command_exist()
{
	type $* >/dev/null 2>&1
}

function git_config()
{
	git config --global color.ui true
}

###############################################################
#               entry
###############################################################
#设置自定义工具的路径
CUSTOM_BASH_TOOL_PATH="/opt/custom_tool/"
ETC_PROFILE_D="/etc/profile.d"
if test -d ${CUSTOM_BASH_TOOL_PATH};then
	err "${CUSTOM_BASH_TOOL_PATH} is already used, please change CUSTOM_BASH_TOOL_PATH variable"
else
	echo "mkdir -p ${CUSTOM_BASH_TOOL_PATH}"
	mkdir -p ${CUSTOM_BASH_TOOL_PATH}
fi

cp custom.sh ${ETC_PROFILE_D}/custom.sh
cp ./custom_tools/* ${CUSTOM_BASH_TOOL_PATH} -f

command_exist git && git_config

#screen
cp .screenrc ~/.screenrc -f
