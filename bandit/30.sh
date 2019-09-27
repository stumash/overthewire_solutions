# 5b90576bedb2cc04c86a9e924ce42faf

tempdir=$(mktemp -d -t stuXXXX)
cd $tempdir

git clone ssh://bandit30-git@localhost/home/bandit30-git/repo
cd repo
cat README.md
# ->
# just an epmty file... muahaha

git fetch --all
git branch -a
# ->
# * master
#   remotes/origin/HEAD -> origin/master
#   remotes/origin/master

# damn no other branches. how about commits?
git log
# commit 3aa4c239f729b07deb99a52f125893e162daac9e
# Author: Ben Dover <noone@overthewire.org>
# Date:   Tue Oct 16 14:00:44 2018 +0200
# 
#     initial commit of README.md

# no other commits? crap. what else can be stored in a git repo?

# ... after some googling I realize that I should check tags
git tag
# ->
# secret

# okay, so there's only one tag, called secret....
git show secret
# -> 47e603bb428404d265f59c42920d81e5

# and there you have it, folks.

# alternatively, we could loop over every git object in the entire
# repo, and print it, hoping we see something suspicious
git rev-list --objects --all | awk '{print $1}' |
while read hash; do
    echo ________________________________;
    git show $hash;
    echo ________________________________;
done
# ->
# ________________________________
# commit 3aa4c239f729b07deb99a52f125893e162daac9e
# Author: Ben Dover <noone@overthewire.org>
# Date:   Tue Oct 16 14:00:44 2018 +0200
# 
#     initial commit of README.md
# 
# diff --git a/README.md b/README.md
# new file mode 100644
# index 0000000..029ba42
# --- /dev/null
# +++ b/README.md
# @@ -0,0 +1 @@
# +just an epmty file... muahaha
# ________________________________
# ________________________________
# 47e603bb428404d265f59c42920d81e5
# ________________________________
# ________________________________
# tree bd85592e905590f084b8df33363a46f9ac4aa708
# 
# README.md
# ________________________________
# ________________________________
# just an epmty file... muahaha
# ________________________________

# we can suspiciously see see a blob object that looks like a
# git hash, but isn't long enough..... just some kind of weird,
# shorter hash that's all alone.  Yup, that's the password
# -> 47e603bb428404d265f59c42920d81e5
