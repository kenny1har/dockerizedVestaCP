#!/bin/bash

export TERM=xterm

if [ -z "`ls /vesta --hide='lost+found'`" ]
then
	rsync -a /vesta-start/* /vesta
fi

#starting Vesta
cd /etc/init.d/ && ./vesta start
cd /etc/init.d/ && ./mysql start
cd /etc/init.d/ && ./nginx start
cd /etc/init.d/ && ./exim4 start
cd /etc/init.d/ && ./php7.0-fpm start
cd /etc/init.d/ && ./bind9 start
cd /etc/init.d/ && ./dovecot start
