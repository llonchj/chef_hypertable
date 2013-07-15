Hypertable Cookbook
===================

>  __This is a beta cookbook not indented to be used in production.__

[Opscode Chef](http://opscode.com/chef) cookbook for [Hypertable](http://www.hypertable.org/).

This cookbook helps build a hypertable cluster.

Installation
------------

1. Create roles:

 * hypertable\_hyperspace
 * hypertable\_master
 * hypertable\_slave
 * hypertable\_thriftbroker\_additional

3. Assign the roles to the nodes.
4. Set an admin node using `hypertable::admin` recipe.
5. Add `hypertable` recipe to the nodes run list.

Recipes
-------

`hypertable` Provisions hypertable and executes the recipes defined by role in the node. (i.e a node with 'hypertable\_master' includes 'hypertable::master')

`hypertable::admin` Installs Capistrano

`hypertable::master` Includes hypertable::monitoring

`hypertable::monitoring` Installs required modules for monitoring


Requirements
------------

* SSH root access between nodes for Capistrano operations.

TODO
----

* Fine tune iptables rules.
* More DRY.
* Support other OSes: Fedora, Redhat, CentOS, Debian, OSX.

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

