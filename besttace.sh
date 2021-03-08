#!/bin/sh
dir=/tmp/besttrace4linux
file=$dir/besttrace4linux.zip
file2=$dir/besttrace
mkdir -p $dir
wget https://cdn.ipip.net/17mon/besttrace4linux.zip -O $file
unzip $file -d $dir
chmod +x $file2
mv $file2 /usr/local/bin/
rm -rf $dir
