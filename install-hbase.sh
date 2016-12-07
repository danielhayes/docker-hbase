#! /bin/bash

wget --quiet http://apache.proserve.nl/hbase/1.2.4/hbase-1.2.4-bin.tar.gz
tar xzf hbase-1.2.4-bin.tar.gz -C /opt/
ln -s /opt/hbase-1.2.4 /opt/hbase
rm hbase-1.2.4-bin.tar.gz
