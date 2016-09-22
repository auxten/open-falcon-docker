#!/bin/sh

WORKDIR=/home/work/open-falcon

cd $WORKDIR
mkdir tmp
#wget $OPEN_FALCON_BIN -O open-falcon-latest.tar.gz
mv /pkg/of-release-* open-falcon-latest.tar.gz
tar -zxf open-falcon-latest.tar.gz -C tmp/
for x in `find ./tmp/ -name "*.tar.gz"`;do \
    app=`echo $x|cut -d '-' -f2`; \
    mkdir -p $app; \
    tar -zxf $x -C $app; \
done

apt-get -y clean
