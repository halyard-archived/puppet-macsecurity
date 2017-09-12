# Set sane security defaults for OSX
class macsecurity {
  osx_default { 'Disable Guest access':
    domain => '/Library/Preferences/com.apple.loginwindow',
    key    => 'GuestEnabled',
    value  => 0,
    type   => 'integer',
    user   => 'root'
  }

  include osx::software_update
  include osx::software_update::frequency

  include osx::security::firewall
}
