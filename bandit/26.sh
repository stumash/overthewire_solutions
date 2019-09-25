# okay, so you're in as bandit26

ls -al
# total 36
# drwxr-xr-x  3 root     root     4096 Oct 16  2018 .
# drwxr-xr-x 41 root     root     4096 Oct 16  2018 ..
# -rwsr-x---  1 bandit27 bandit26 7296 Oct 16  2018 bandit27-do
# -rw-r--r--  1 root     root      220 May 15  2017 .bash_logout
# -rw-r--r--  1 root     root     3526 May 15  2017 .bashrc
# -rw-r--r--  1 root     root      675 May 15  2017 .profile
# drwxr-xr-x  2 root     root     4096 Oct 16  2018 .ssh
# -rw-r-----  1 bandit26 bandit26  258 Oct 16  2018 text.txt

# bandit27-do runs any command you give as user bandit27. So do
./bandit27-do cat /etc/bandit_pass/bandit27
# -> 3ba3118a22e93127a4ed485be72ef5ea
