# Class: addusers
# ===========================
#
# Full description of class addusers here.
#
# Parameters
# ----------
#
# Document parameters here.
#
# * `sample parameter`
# Explanation of what this parameter affects and what it defaults to.
# e.g. "Specify one or more upstream ntp servers as an array."
#
# Variables
# ----------
#
# Here you should define a list of variables that this module would require.
#
# * `sample variable`
#  Explanation of how this variable affects the function of this class and if
#  it has a default. e.g. "The parameter enc_ntp_servers must be set by the
#  External Node Classifier as a comma separated list of hostnames." (Note,
#  global variables should be avoided in favor of class parameters as
#  of Puppet 2.6.)
#
# Examples
# --------
#
# @example
#    class { 'addusers':
#      servers => [ 'pool.ntp.org', 'ntp.local.company.com' ],
#    }
#
# Authors
# -------
#
# Author Name <author@domain.com>
#
# Copyright
# ---------
#
# Copyright 2016 Your name here, unless otherwise noted.
#
class addusers {

  user { becca:
    ensure => 'present',
    gid => '',
    groups => ['cars', 'sysadmin'],
    managehome => true,
    home => '/home/becca',
    password => '$1$2XKqiQa5$YlIN4TjPgCHQAV56wOGZY/',
    password_max_age => '9999',
    password_min_age => '0',
    shell => '/bin/bash',
    uid => '10017904',
    require => [Group['cars'], Group['sysadmin']]
  }

  group { cars:
    ensure => 'present',
  }

  group { sysadmin:
    ensure => 'present',
  }

  file { "/home/becca":
    ensure => directory,
    owner => 'becca',
    mode => '0750',
    require => User['becca'],
  }

   user{ fred:
    ensure => 'present',
    gid => '',
    groups => ['cars', 'trucks'],
    managehome => true,
    home => '/home/fred',
    password => '$1$HrmdZUrp$2gbe7.ZlxtglTZYXSBgEP/',
    password_max_age => '9999',
    password_min_age => '0',
    shell => '/bin/csh',
    uid => '10027904',
  }

  group { cars:
    ensure => 'present',
  }

  group { trucks:
    ensure => 'present',
  }

  file { "/home/fred":
    ensure => directory,
    owner => 'fred',
    mode => '0750',
    require => User['fred'],
  }
   
    user{ wilma:
    ensure => 'present',
    gid => '',
    groups => ['cars', 'trucks', 'ambulances'],
    managehome => true,
    home => '/home/wilma',
    password => '$1$QyKQS1IR$LqkG0pDJZuQBtzpT3U.zr.',
    password_max_age => '9999',
    password_min_age => '0',
    shell => '/bin/bash',
    uid => '10037904',
  }  

  group { cars:
    ensure => 'present',
  }

  group { trucks:
    ensure => 'present',
  }

  group { ambulances:
    ensure => 'present',
  }

  file { "/home/wilma":
    ensure => directory,
    owner => 'wilma',
    mode => '0750',
    require => User['wilma'],
  }

  ssh_authorized_key { wilma:
    ensure => present,
    name => 'wilma',
    user => 'wilma',
    type => 'ssh-dss',
    key => 'AAAAB3NzaC1kc3MAAACBALR5L9m9haWcxTs+7cYgHk2Wf9mXXPAJy48Z/W7j8McqVR2GCzmXMwsUqZ/sIMT2TjZZ86Z3jExDf5/NBtx5mjpKOeJ+bdv2BwEOeh5cmtQDA3wxFqBxzpyt/043gS5b8/f5GP4WcTxqS5WqKQdW21pnLcf6ngor3nKU8OnZlj5AAAAFQDHN1DnoVfLzXOBvOQOFMbcqRsc9wAAAIEApE/bcR83LWb+x1LoUaSD7M1dnD2bYroxC9CdFuOt+zEnP0oWdIJDH/cVP0+tsQisvYoR2kQilOjTE0erW+SQSS1FrS5lehHTiesgmqj5TudK1uKKlqrXN6goNmnZ9+spKTiGZh54TMmmbkH1MeWa8GzcdNQYKnr5Wu9yN1pIjtoAAACARLnp1wgll/xtFpMxTdarRGimcHjCtqbbH4pSgDTW6vAk5OZo+TzI3UUbX0xp0gklwb+kkYmeBTcSKVygnBMxEYPE0qwb0LMWfw90enfCjjm95/uVpnG8ljQQtUNc7pReQA08Qp+8RQ2kRqtAXnM21TldcUyq+umrB+FqS+v7sSA=',
  }

}



