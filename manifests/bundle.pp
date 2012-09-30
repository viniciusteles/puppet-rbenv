define rbenv::bundle(
  $home,
  $user,
  $path,
  $group   = $user,
) {

  exec {"${user} bundle":
    command   => "rbenv exec bundle --path=${path}/.bundle",
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
    creates   => "${path}/.bundle",
    timeout   => 0,
    logoutput => true,
  }
}
