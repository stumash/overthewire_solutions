# UoMYTrfrBFHyQXmg6gzctqAwOmw1IohZ

tempdir=$(mktemp -d -t stuXXXXX)
cd $tempdir

for i in $(seq -f "%04g" 0 9999); do
    echo "UoMYTrfrBFHyQXmg6gzctqAwOmw1IohZ $i" >> inp.txt
done

nc localhost 30002 < inp.txt
# -> uNG9O58gUE7snukf3bvZ0rxhtnjzSGzG
