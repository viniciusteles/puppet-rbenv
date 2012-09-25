define rbenv::bundle(
  $home,
  $user,
  $path,
  $group   = $user,
) {

Exec {
  path => [
           "${home}/.rbenv/bin",
           "${home}/.rbenv/shims",
           '/usr/local/sbin',
           '/usr/local/bin',
           '/usr/sbin',
           '/usr/bin',
           '/sbin',
           '/bin'
           ],
}
  exec {"${user} bundle":
    command   => "bundle --path=${path}/.bundle",
    cwd       => $path,
    user      => $user,
    group     => $group,
    path      => [
                   "${home}/.rbenv/bin",
                   "${home}/.rbenv/shims",
                   '/usr/local/sbin',
                   '/usr/local/bin',
                   '/usr/sbin',
                   '/usr/bin',
                   '/sbin',
                   '/bin'
                  ],
    creates   => "${path}/Gemfile.lock",
    timeout   => 0,
    logoutput => true,
  }
}
