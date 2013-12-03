# puppet-psprompt
===

[![Build Status](https://travis-ci.org/puppet/puppet-psprompt.png?branch=master)](https://travis-ci.org/puppet/puppet-psprompt)

This module adds custom ps1.sh and ps1.csh in /etc/profile.d so that the prompt can be customized in puppet to use a alternative than the regular $hostname 

===

# Compatibility
---------------
This module is built for use with Puppet v3 on the following OS families.

* EL 6
* Some other OS

===

# Parameters
------------

name
-------------
set to alternative hostname to use instead of $hostname.

- *Default*: $::hostname
