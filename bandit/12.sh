# 5Te8Y4drgCRfCx8ugdwuEX8KFC6k2EUu

# use `file` to see what kind of file data.txt

cd (mktemp -d -t stuXXXXXXX)
cp ~/data.txt .
xxd -r data.txt > data2.txt # data.txt is a hex dump

file data2.txt # gzip compressed file
cp data2.txt data2.gz
gzip -d -c data2.gz > data3.txt

file data3.txt # bzip2 compressed file
cp data3.txt data3.bz2
bzip2 -d -c data3.bz2 > data4.txt

file data4.txt # gzip compressed file
cp data4.txt data4.gz
gzip -d -c data4.gz > data5.txt

file data5.txt # tar archive
cp data5.txt data5.tar
tar xf data5.tar -O > data6.txt

file data6.txt # tar archive
cp data6.txt data6.tar
tar xf data6.tar -O > data7.txt

file data7.txt # bzip2 compressed file
cp data7.txt data7.bz2
bzip2 -d -c data7.bz2 > data8.txt

file data8.txt # tar archive
cp data8.txt data8.tar
tar xf data8.tar -O > data9.txt

file data9.txt # gzip compressed file
cp data9.txt data9.gz
gzip -d -c data9.gz
