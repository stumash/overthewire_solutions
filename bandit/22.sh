# Yk7owGAcWjwMVRwrTesJEwB7WVOiILLI

cat /etc/cron.d/cronjob_bandit23
# -> /usr/bin/cronjob_bandit23.sh

cat /usr/bin/cronjob_bandit23.sh
# -> shows
#       mytarget="$(echo I am user bandit23 | md5sum | cut -d ' ' -f 1)"
#       cat /etc/bandit_pass/$myname > /tmp/$mytarget

mytarget="$(echo I am user bandit23 | md5sum | cud -d ' ' -f 1)"
cat /tmp/$mytarget
# -> jc1udXuA1tiHqjIsL8yaapX5XIAI6i0n
