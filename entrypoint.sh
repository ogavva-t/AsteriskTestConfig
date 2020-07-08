#!/bin/bash

# Replace External Address Settings
sed -i "s/ENV_EXT_MEDIA_ADDRESS/$EXT_MEDIA_ADDRESS/" /etc/asterisk/pjsip.conf
sed -i "s/ENV_EXT_SIGNALING_ADDRESS/$EXT_SIGNALING_ADDRESS/" /etc/asterisk/pjsip.conf
sed -i "s/ENV_EXTEN_PASSWORD/$EXTEN_PASSWORD/" /etc/asterisk/pjsip.conf

sed -i "s/ENV_TRUNK_HOST/$TRUNK_HOST/" /etc/asterisk/pjsip_trunk.conf
sed -i "s/ENV_TRUNK_PORT/$TRUNK_PORT/" /etc/asterisk/pjsip_trunk.conf
sed -i "s/ENV_TRUNK_HOST/$TRUNK_HOST/" /etc/asterisk/pjsip_trunk_noauth.conf
sed -i "s/ENV_TRUNK_PORT/$TRUNK_PORT/" /etc/asterisk/pjsip_trunk_noauth.conf

sed -i "s/ENV_TRUNK_USERNAME/$TRUNK_USERNAME/" /etc/asterisk/pjsip_trunk.conf
sed -i "s/ENV_TRUNK_PASSWORD/$TRUNK_PASSWORD/" /etc/asterisk/pjsip_trunk.conf
sed -i "s/ENV_TRUNK_CALLERID/$TRUNK_CALLERID/" /etc/asterisk/extensions.conf

case $TRUNK_TYPE in
REG)
  echo '#include "pjsip_trunk_reg.conf"' >> /etc/asterisk/pjsip.conf
  ;;
NO_AUTH)
  echo '#include "pjsip_trunk_noauth.conf"' >> /etc/asterisk/pjsip.conf
  ;;
esac

# Start server.
echo 'Starting Asterisk...'
/usr/sbin/asterisk -vvvvvdddddc
