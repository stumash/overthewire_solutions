# bbc96594b4e001778eee9975372716b2

tempdir=$(mktemp -d -t stuXXXXX)
cd $tempdir

git clone ssh://bandit29-git@localhost/home/bandit29-git/repo
cd repo
ls # -> README.md
cat README.md
# ->
# # Bandit Notes
# Some notes for bandit30 of bandit.
#
# ## credentials
#
# - username: bandit30
# - password: <no passwords in production!>
#

# let's try the same strategy as last time
git log
# ->
# commit 84abedc104bbc0c65cb9eb74eb1d3057753e70f8
# Author: Ben Dover <noone@overthewire.org>
# Date:   Tue Oct 16 14:00:41 2018 +0200
#
#     fix username
#
# commit 9b19e7d8c1aadf4edcc5b15ba8107329ad6c5650
# Author: Ben Dover <noone@overthewire.org>
# Date:   Tue Oct 16 14:00:41 2018 +0200
#
#     initial commit of README.md

git checkout HEAD^
cat README.md
# ->
# # Bandit Notes
# Some notes for bandit30 of bandit.
#
# ## credentials
#
# - username: bandit30
# - password: <no passwords in production!>
#

# crap. maybe there are some other branches that have the password?
git branch --all
# * master
#   remotes/origin/HEAD -> origin/master
#   remotes/origin/dev
#   remotes/origin/master
#   remotes/origin/sploits-dev

# hmm, let's go have a look at sploits-dev
git checkout sploits-dev
git pull
ls -R
# ->
# .:
# exploits  README.md
# 
# ./exploits:
# horde5.md

# what's in the exploits/horde5.md file?
cat exploits/horde5.md
# ->
#

# hmm empty file. what about README.md?
cat README.md
# ->
# # Bandit Notes
# Some notes for bandit30 of bandit.
# 
# ## credentials
# 
# - username: bandit30
# - password: <no passwords in production!>
# 

# nothing? okay. let's try another branch
git checkout dev
git pull
ls -R
# ->
# .:
# code  README.md
# 
# ./code:
# gif2ascii.py

cat README.md
# ->
# # Bandit Notes
# Some notes for bandit30 of bandit.
# 
# ## credentials
# 
# - username: bandit30
# - password: 5b90576bedb2cc04c86a9e924ce42faf
# 

# and there it is
