class rbenv::dependencies::ubuntu {
  if ! defined(Package['build-essential'])  { package { 'build-essential':  ensure => installed, before => Anchor[rbenv::end],  } }
  if ! defined(Package['libc6-dev'])        { package { 'libc6-dev':        ensure => installed, before => Anchor[rbenv::end],  } }
  if ! defined(Package['bison'])            { package { 'bison':            ensure => installed, before => Anchor[rbenv::end],  } }
  if ! defined(Package['openssl'])          { package { 'openssl':          ensure => installed, before => Anchor[rbenv::end],  } }
  if ! defined(Package['libreadline6'])     { package { 'libreadline6':     ensure => installed, before => Anchor[rbenv::end],  } }
  if ! defined(Package['libreadline6-dev']) { package { 'libreadline6-dev': ensure => installed, before => Anchor[rbenv::end],  } }
  if ! defined(Package['zlib1g'])           { package { 'zlib1g':           ensure => installed, before => Anchor[rbenv::end],  } }
  if ! defined(Package['zlib1g-dev'])       { package { 'zlib1g-dev':       ensure => installed, before => Anchor[rbenv::end],  } }
  if ! defined(Package['libssl-dev'])       { package { 'libssl-dev':       ensure => installed, before => Anchor[rbenv::end],  } }
  if ! defined(Package['libyaml-dev'])      { package { 'libyaml-dev':      ensure => installed, before => Anchor[rbenv::end],  } }
  if ! defined(Package['libxml2-dev'])      { package { 'libxml2-dev':      ensure => installed, before => Anchor[rbenv::end],  } }
  if ! defined(Package['libxslt1-dev'])     { package { 'libxslt1-dev':     ensure => installed, before => Anchor[rbenv::end], alias =>'libxslt-dev' } }
  if ! defined(Package['autoconf'])         { package { 'autoconf':         ensure => installed, before => Anchor[rbenv::end],  } }
  if ! defined(Package['git'])              { package { 'git':              ensure => installed, before => Anchor[rbenv::end], name => 'git-core' } }
  if ! defined(Package['curl'])             { package { 'curl':             ensure => installed, before => Anchor[rbenv::end],  } }
}
