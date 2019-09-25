# GbKksEFF4yrVs6il55v6gwY5aVje5f0j

nc -l -p 25000 & # netcat listen on port 25000 in the backround
./suconnect 25000 & # connect to netcat server in the background
fg %1 # bring the netcat job to the foreground
# enter the password
# -> gives back gE269g2h3mw3pwgrj0Ha9Uoqen1c9DGr
