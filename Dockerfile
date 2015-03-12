FROM busybox
MAINTAINER Sylvain Boily "sboily@avencall.com"

# Volume CTID
ADD ctid/* /etc/xivo-ctid/conf.d/
VOLUME /etc/xivo-ctid/conf.d/

# Volume DIRD
ADD dird/conf.d/* /etc/xivo-dird/conf.d/
ADD dird/sources.d/* /etc/xivo-dird/sources.d/
ADD dird/csv/* /tmp/csv/
VOLUME /etc/xivo-dird/conf.d/
VOLUME /etc/xivo-dird/sources.d/
VOLUME /tmp/csv/

# Volume CONFD
ADD confd/* /etc/xivo-confd/conf.d/
VOLUME /etc/xivo-confd/conf.d/

# Volume AGID
ADD agid/conf.d/* /etc/xivo-agid/conf.d/
ADD agid/asterisk/* /etc/xivo/asterisk/
ADD agid/mail.txt /etc/xivo/mail.txt
VOLUME /etc/xivo-agid/conf.d/
VOLUME /etc/xivo/asterisk
VOLUME /etc/xivo/mail.txt

# Volume AGENTD
ADD agentd/* /etc/xivo-agentd/conf.d/
VOLUME /etc/xivo-agentd/conf.d/

# Volume CONFGEND
ADD confgend/* /etc/xivo/
VOLUME /etc/xivo/xivo-confgend.conf
VOLUME /etc/xivo/xivo-confgend

# Volume sysconfd
ADD sysconfd/* /etc/xivo/
VOLUME /etc/xivo/sysconfd.conf
VOLUME /etc/xivo/sysconfd

# Volume PROVD
ADD provd/* /etc/xivo/provd/
VOLUME /etc/xivo/provd/

# Volume DXTORA
ADD dxtora/* /etc/xivo-dxtora/
VOLUME /etc/xivo-dxtora/

# Volume CALL-LOGD
ADD call-logd/* /etc/xivo-call-logd/conf.d/
VOLUME /etc/xivo-call-logd/conf.d/

# Volume AMID
ADD amid/* /etc/xivo-amid/conf.d/
VOLUME /etc/xivo-amid/conf.d/

# Volume WEBI
ADD webi/nginx/* /etc/nginx/sites-enabled/
ADD webi/ssl/* /etc/nginx/ssl/
ADD webi/etc/* /etc/xivo/web-interface/
VOLUME /etc/nginx/sites-enabled/
VOLUME /etc/nginx/ssl/
VOLUME /etc/xivo/web-interface/

# Volume Asterisk
ADD odbc/* /etc/odbc/
ADD confgend-client/* /etc/xivo-confgend-client/
ADD asterisk/manager.conf /etc/asterisk/manager.conf
VOLUME /etc/odbc/
VOLUME /etc/xivo-confgend-client/
VOLUME /etc/asterisk/manager.conf

# Volume POSTGRESQL
VOLUME /var/run/postgresql/

# Volume MANAGEDB
ADD manage-db/conf.d/* /etc/xivo-dao/conf.d/
ADD manage-db/alembic.ini /usr/share/xivo-manage-db/alembic.ini
VOLUME /etc/xivo-dao/conf.d/
VOLUME /usr/share/xivo-manage-db/alembic.ini

CMD /bin/sh
