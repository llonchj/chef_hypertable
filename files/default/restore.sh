#!/usr/bin/env bash

if [ $# -lt 2 ] ; then
    echo "usage: $0   [  ... ]"
    exit 0
fi

namespace=$1
shift

while [ $# -ge 1 ]; do
    table=`basename $1 | cut -f1 -d'.'`
    echo "Restoring '${namespace}/${table}' ..."
    cat create-table-$1.hql | /opt/hypertable/current/bin/ht shell
    echo "USE '${namespace}'; LOAD DATA INFILE '$1.gz' INTO TABLE '$table';" | /opt/hypertable/current/bin/ht shell
    shift
done
