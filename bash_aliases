#!/bin/bash

# docker 
alias ds="docker container stop \`docker container ls | tail -n1 | awk '{print \$1}'\`"
alias dt="docker container top \`docker container ls | tail -n1 | awk '{print \$1}'\`"
alias db="docker exec -it \`docker container ls | tail -n1 | awk '{print \$1}'\` bash"
alias dc="for i in \`docker images  | awk '/ramo|none/ {print \$3}'\`; do docker rmi -f \$i; done"
alias di="docker images"
alias dl="docker container ls"

# random
alias p='ps -ef | grep java | grep -iv idea | grep -iv eclipse'

# activated on invocation of tomcat command in the shell
tomcat() {
	alias debug="$TOMCAT_HOME/bin/catalina.sh jpda start"
	alias start="$TOMCAT_HOME/bin/startup.sh"
	alias stop="$TOMCAT_HOME/bin/shutdown.sh"
	alias tlogc="> $TOMCAT_HOME/logs/catalina.out"
	alias tlog="less $TOMCAT_HOME/logs/catalina.out"
	alias tlogt="tail -f  $TOMCAT_HOME/logs/catalina.out"
	alias run="start && tlogt"
}



