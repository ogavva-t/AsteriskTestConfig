#!/bin/bash

# Replace External Address Settings
sed -i "s/ENV_EXT_MEDIA_ADDRESS/$EXT_MEDIA_ADDRESS/" /etc/asterisk/pjsip.conf
sed -i "s/ENV_EXT_SIGNALING_ADDRESS/$EXT_SIGNALING_ADDRESS/" /etc/asterisk/pjsip.conf
sed -i "s/ENV_EXTEN_PASSWORD/$EXTEN_PASSWORD/" /etc/asterisk/pjsip.conf

sed -i "s/ENV_TRUNK_URL/$TRUNK_URL/" /etc/asterisk/pjsip_trunk.conf
sed -i "s/ENV_TRUNK_PORT/$TRUNK_PORT/" /etc/asterisk/pjsip_trunk.conf
sed -i "s/ENV_TRUNK_USERNAME/$TRUNK_USERNAME/" /etc/asterisk/pjsip_trunk.conf
sed -i "s/ENV_TRUNK_PASSWORD/$TRUNK_PASSWORD/" /etc/asterisk/pjsip_trunk.conf


# Start server.
echo 'Starting Asterisk...'
/usr/sbin/asterisk -vvvvvdddddc
