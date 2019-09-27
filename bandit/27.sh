# 3ba3118a22e93127a4ed485be72ef5ea

tempdir=$(mktemp -d -t stuXXX)
cd $tempdir
git clone ssh://bandit27-git@localhost/home/bandit27-git/repo
cat repo/README
# -> The password to the next level is: 0ef186ac70e04ea33b4c1853d2526fa2
cd ~
rm -rf $tempdir
