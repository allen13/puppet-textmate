# Public: Install TextMate to /Applications
#
# Examples
#
#   include textmate2::nightly
class textmate::textmate2::nightly inherits textmate::textmate2 {
  package { 'TextMate':
    source   => 'https://api.textmate.org/downloads/nightly',
    provider => 'compressed_app',
    flavor   => 'tbz'
  }
  file { "/Applications/TextMate.app/Contents/Resources/TextMate.icns":
    ensure  => file,
    replace => true,
    source  => 'puppet:///modules/textmate/default.icns'
  }
}
