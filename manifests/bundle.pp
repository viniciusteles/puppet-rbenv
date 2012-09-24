define rbenv::bundle(
  $home,
  $user,
  $path,
  $group   = $user,
) {

  exec {"${user} bundle":
    command   => "bundle --path=${path}/.bundle",
    cwd       => $path,
    user      => $user,
    group     => $group,
    path      => "${home}/.rbenv/bin:${home}/.rbenv/shims:/bin:/usr/bin",
    creates   => "${path}/Gemfile.lock",
    logoutput => true,
  }
}
