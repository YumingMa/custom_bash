#!/bin/bash
 
function echoGreenChar()
{
    printf "\033[1;32;40m$1 \033[0m\n"
}
 
function echoRedChar()
{
    printf "\033[1;31;40merror:$1 \033[0m\n"
}


function replace ()
{
    rm -r unused
    mkdir -p unused/bak
    grep ' unused variable' $1|sort -rV |uniq > ./unused/unused.txt 
    awk -F ":" 'BEGIN{tmp["aaa"]=1}{if(tmp[$1]==1){}else{printf("%s\n", $1);tmp[$1]=1}}' ./unused/unused.txt > ./unused/restore
    awk -F ":" 'BEGIN{tmp["aaa"]=1}{if(tmp[$1]==1){}else{printf("cp %s unused/bak\n", $1);tmp[$1]=1} printf("sed -i -e %dd %s\n",$2,$1)}' ./unused/unused.txt > unused/rep.sh
    echoGreenChar "replace sh ok "
    sh unused/rep.sh
    echoGreenChar "replace ok"   
}
 
if [ "$1" == "" ] ; then
    echoRedChar "run make 2> warn.log, then run $0 warn.log"
    exit 0
fi
#Judge the file is exit
if [ -e $1 ] ; then
    replace $1    
else
   echoGreenChar "File does not exist"
fi
exit 0
