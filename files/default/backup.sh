#!/usr/bin/env bash

if [ $# -lt 2 ] ; then
    echo "usage: $0 <namespace> <table> [  ... ]"
    exit 0
fi

namespace=$1
shift
while [ $# -ge 1 ]; do
    echo "Backing up '${namespace}/$1' ..."
    echo "USE '${namespace}';" > create-table-$1.hql
    echo "USE '${namespace}'; SHOW CREATE TABLE '$1';" | /opt/hypertable/current/bin/ht shell --silent >> create-table-$1.hql
    echo ";" >> create-table-$1.hql
    echo "USE '${namespace}'; DUMP TABLE '$1' INTO FILE '$1.gz';" | /opt/hypertable/current/bin/ht shell
    shift
done