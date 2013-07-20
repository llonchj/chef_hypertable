# hypertable cookbook

>  __The contents in this cookbook might change without deprecation before version 1.0__

This cookbook helps maintain a [Hypertable](http://hypertable.com/) [distributed database ](http://hypertable.com/documentation/architecture/) in a single node (local DFS) or a cluster of nodes (Hadoop) using a hosted or private [Opscode Chef](http://opscode.com/chef) [server](http://docs.opscode.com/chef_overview_server.html).

More information:

* [Opscode Chef](http://opscode.com/chef)
* [Hypertable](http://www.hypertable.org/).
* [Hypertable Documentation](http://hypertable.com/documentation/).
* [Capistrano](http://www.capistranorb.com).
* [Capistrano Chef](https://github.com/cramerdev/capistrano-chef).

##Cluster Management

The cluster is managed by `capistrano`.

        cap -f /opt/hypertable/current/conf/Capfile start
        cap -f /opt/hypertable/current/conf/Capfile stop

You can also start 

        cap -f /opt/hypertable/current/conf/Capfile start_hyperspace
        cap -f /opt/hypertable/current/conf/Capfile stop_hyperspace
        cap -f /opt/hypertable/current/conf/Capfile start_master
        cap -f /opt/hypertable/current/conf/Capfile stop_master
        cap -f /opt/hypertable/current/conf/Capfile start_slaves
        cap -f /opt/hypertable/current/conf/Capfile stop_slaves
        cap -f /opt/hypertable/current/conf/Capfile start_thriftbroker
        cap -f /opt/hypertable/current/conf/Capfile start_thriftbroker
        cap -f /opt/hypertable/current/conf/Capfile start_thriftbroker_additional
        cap -f /opt/hypertable/current/conf/Capfile start_thriftbroker_additional

For more information refer to [`capistrano` documentation](https://github.com/capistrano/capistrano/wiki) and `templates/default/Capfile.erb` template.

##High Availability (HA)

By setting up more than one Hyperspace, Master and Slave nodes using a DFS other than `local`.

# Requirements

* SSH root access between nodes for Capistrano access.
* capistrano 2.0 or greater
* capistrano-chef

The user running capistrano `cap` command line needs access to a Chef Server. Refer to [Chef Documentation](http://docs.opscode.com).

# Usage

Include `recipe[hypertable]` in your _run\_list_ to keep a latent installation of Hypertable in this node.

Include the recipes into your _run\_list_ for the node to operate as:

* __Hyperspace__ `recipe[hypertable::hyperspace]`
Sets the node as an _active master_ in the cluster. A Hyperspace node runs a Hyperspace. A cluster requires at least ONE hyperspace, more hyperspaces will be set as replicas.

* __Master__ `recipe[hypertable::master]`
Sets the node as an _active master_ in the cluster. A Master node runs a Hyperspace Master. More than one Master nodes in the cluster provide HA.

* __Slave__ `recipe[hypertable::slave]`
Sets the node as an _active slave_ in the cluster. A Slave node runs a RangeServer and a ThriftBroker.

* __ThriftBroker__ `recipe[hypertable::thriftbroker]`
Sets the node as an _active ThriftBroker_ in the cluster. ThriftBroker is required for the nodes that run HyperTable applications (ht, or thriftbroker client enabled apps).

## How to operate a Cluster

Due the multinode nature of the 

# Attributes

> __TODO__ A major structuration of attributes is being required and documented

# Recipes

`hypertable` Installs Hypertable

`hypertable::admin` Installs Capistrano

`hypertable::master` Enables node as Master replica and includes hypertable::monitoring

`hypertable::monitoring` Installs required modules for monitoring

`hypertable::hyperspace` Enables node as Hyperspace replica

`hypertable::slave` Enables node as RangeServer

`hypertable::thriftbroker` Enables node as ThriftBroker


# Todo

* Support other OSes: Fedora, Redhat, CentOS, Debian, OSX.
* Support all Hypertable supported DFS's.
* Test cases.

# Contribute

Feel free to fork [https://github.com/llonchj/cookbook_hypertable](https://github.com/llonchj/chef_hypertable) and pull request your modifications.

#License and Authors

Licensed under the Apache License, Version 2.0 (the "License");
you may not use this file except in compliance with the License.
You may obtain a copy of the License at

    http://www.apache.org/licenses/LICENSE-2.0

Unless required by applicable law or agreed to in writing, software
distributed under the License is distributed on an "AS IS" BASIS,
WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
See the License for the specific language governing permissions and
limitations under the License.

Copyright 2013, by his authors: 

* Jordi Llonch <llonchj@gmail.com>
