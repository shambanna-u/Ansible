#!/bin/bash
# chkconfig: 2345 20 80
# description: Description comes here....

# Source function library.
. /etc/init.d/functions

start() {

    yum install -y git ansible
    git clone https://github.com/shambanna-u/Ansible
    cd Ansible/code/hands-on/
    ansible-playbook httpd.yaml
    # code to start app comes here 
    # example: daemon program_name &
}

stop() {
    # code to stop app comes here 
    # example: killproc program_name
    echo "stop"
}

case "$1" in 
    start)
       start
       ;;
    stop)
       stop
       ;;
    restart)
       stop
       start
       ;;
    status)
       # code to check status of app comes here 
       # example: status program_name
       ;;
    *)
       echo "Usage: $0 {start|stop|status|restart}"
esac

exit 0
