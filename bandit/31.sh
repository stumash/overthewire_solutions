# 47e603bb428404d265f59c42920d81e5

ls
# -> README.md
cat README.md
# ->
# This time your task is to push a file to the remote repository.
# 
# Details:
#     File name: key.txt
#     Content: 'May I come in?'
#     Branch: master

# ok... I guess I'll just do that
echo 'May I come in?' > key.txt
git add key.txt
# ->
# On branch master
# Your branch is up-to-date with 'origin/master'.
# Changes to be committed:
#   (use "git reset HEAD <file>..." to unstage)
# 
#         new file:   key.txt

# fine.
git add -f key.txt
git commit -m "add key.txt"
git push
# ->
# Counting objects: 3, done.
# Delta compression using up to 4 threads.
# Compressing objects: 100% (2/2), done.
# Writing objects: 100% (3/3), 324 bytes | 0 bytes/s, done.
# Total 3 (delta 0), reused 0 (delta 0)
# remote: ### Attempting to validate files... ####
# remote:
# remote: .oOo.oOo.oOo.oOo.oOo.oOo.oOo.oOo.oOo.oOo.
# remote:
# remote: Well done! Here is the password for the next level:
# remote: 56a9bf19c63d650ce78e6ec0354ee45e
# remote:
# remote: .oOo.oOo.oOo.oOo.oOo.oOo.oOo.oOo.oOo.oOo.
# remote:
# To ssh://localhost/home/bandit31-git/repo
#  ! [remote rejected] master -> master (pre-receive hook declined)
# error: failed to push some refs to 'ssh://bandit31-git@localhost/home/bandit31-git/repo'
