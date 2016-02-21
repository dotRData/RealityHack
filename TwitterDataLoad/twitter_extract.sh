count=$1

python /Users/ranand/RealityHack/TwitterDataLoad/twitter-trends.py | cut -f1 -d',' > abc

while read tweet
do
	echo $tweet
	python /Users/ranand/RealityHack/TwitterDataLoad/twitter-search.py "$tweet" $1
done < abc
