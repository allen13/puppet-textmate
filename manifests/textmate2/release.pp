# Public: Install TextMate to /Applications
#
# Examples
#
#   include textmate2::release
class textmate::textmate2::release inherits textmate::textmate2 {
  package { 'TextMate':
    source   => 'https://api.textmate.org/downloads/release',
    provider => 'compressed_app',
    flavor   => 'tbz'
  }
  file { "/Applications/TextMate.app/Contents/Resources/TextMate.icns":
    ensure  => file,
    replace => true,
    source  => 'puppet:///modules/textmate/default.icns'
  }
}
