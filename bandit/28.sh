# 0ef186ac70e04ea33b4c1853d2526fa2

tempdir=$(mktemp -d -t stuXXXX)
cd $tempdir

git clone ssh://bandit28-git@localhost/home/bandit28-git/repo
cd repo

ls
# -> README.md

cat README.md
# ->
# # Bandit Notes
# Some notes for level29 of bandit.
#
# ## credentials
#
# - username: bandit29
# - password: bbc96594b4e001778eee9975372716b2
#

# so, I run a git log to see what kind of stuff has been done in this repo
git log
# ->
# commit 073c27c130e6ee407e12faad1dd3848a110c4f95
# Author: Morla Porla <morla@overthewire.org>
# Date:   Tue Oct 16 14:00:39 2018 +0200
#
#     fix info leak
#
# commit 186a1038cc54d1358d42d468cdc8e3cc28a93fcb
# Author: Morla Porla <morla@overthewire.org>
# Date:   Tue Oct 16 14:00:39 2018 +0200
#
#     add missing data
#
# commit b67405defc6ef44210c53345fc953e6a21338cc7
# Author: Ben Dover <noone@overthewire.org>
# Date:   Tue Oct 16 14:00:39 2018 +0200

# we see that the most recent commit fixed an info leak, so let's
# check out the previous commit
git checkout HEAD^
# and now let's see what was in the README.md
cat README.md
# ->
# # Bandit Notes
# Some notes for level29 of bandit.
# 
# ## credentials
# 
# - username: bandit29
# - password: bbc96594b4e001778eee9975372716b2

cd
rm -rf $tempdir # cleanup
