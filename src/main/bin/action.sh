#!/usr/bin/env bash
##################################################################
## usage: bash action.sh stop/star
## author: bigwinner
## email: stearnsliu@gmail.com
## date: 2021/01/07
## attention: 当前脚本路径使用的是相对路径，执行脚本是需注意当前路径
##################################################################
PROJECT_DIR=/opt/liushili/SpringBootDemo-0.0.1-SNAPSHOT
CONF_DIR=$PROJECT_DIR/config
LIB_DIR=$PROJECT_DIR/lib
LIB_JARS=`ls $LIB_DIR | grep .jar | awk '{print "'$LIB_DIR'/"$0}'`
start(){
    nohup java -jar $LIB_JARS --spring-config-location=${CONF_DIR}/application.yml  > /dev/null 2>&1 & echo $! > pid
}

stop(){
    PID=$(cat ./pid)
    kill -9 $PID
}

################################
# main
################################
operate_mode=$1
shift

case ${operate_mode} in
  start)
    start
    echo "Start success!"
    ;;
  stop)
    stop
    echo "Stop success!"
    ;;
  *)
    echo "Unknown or unspecified command ${operate_mode}"
    exit 1
    ;;
esac

exit 0