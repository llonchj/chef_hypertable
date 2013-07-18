Hypertable Cookbook
===================

>  __This is a beta cookbook, all names and recipes might change in the future.__

[Opscode Chef](http://opscode.com/chef) cookbook for [Hypertable](http://www.hypertable.org/).

This cookbook helps build a hypertable cluster.

Recipes
-------

`hypertable` Installs Hypertable

`hypertable::admin` Installs Capistrano

`hypertable::master` Enables node as Master replica and includes hypertable::monitoring

`hypertable::monitoring` Installs required modules for monitoring

`hypertable::hyperspace` Enables node as Hyperspace replica

`hypertable::slave` Enables node as RangeServer

`hypertable::thriftbroker` Enables node as ThriftBroker

Requirements
------------

* SSH root access between nodes for Capistrano operations.

TODO
----

* Support other OSes: Fedora, Redhat, CentOS, Debian, OSX.
* Support all Hypertable supported DFS's.
* Hypertable configuration options.
* Test cases.

Contribute
----------

Feel free to fork [https://github.com/llonchj/cookbook_hypertable](https://github.com/llonchj/chef_hypertable) and pull request your modifications.

License and Authors
-------------------

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


