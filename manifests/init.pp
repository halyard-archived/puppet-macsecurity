class security {
  osx_default { 'Disable Guest access':
    domain => '/Library/Preferences/com.apple.loginwindow',
    key    => 'GuestEnabled',
    value  => 0,
    type   => 'integer'
  }
}
