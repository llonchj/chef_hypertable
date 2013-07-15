Hypertable Cookbook
===================

>  __This is a beta cookbook not indented to be used in production.__

[Opscode Chef](http://opscode.com/chef) cookbook for [Hypertable](http://www.hypertable.org/).

This cookbook helps build a hypertable cluster.

Installation
------------

1. Create roles:

 * hypertable\_admin
 * hypertable\_hyperspace
 * hypertable\_master
 * hypertable\_slave
 * hypertable\_thriftbroker\_additional

3. Assign the roles to the nodes.
4. Set an admin node using `hypertable::admin` recipe.
5. Add `hypertable` recipe to the nodes run list.

Recipes
-------

`hypertable` Provisions hypertable and executes the recipes defined by role in the node. (i.e a node with 'hypertable\_master' will include 'hypertable::master')

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
Authors: Jordi Llonch <llonchj@gmail.com>

