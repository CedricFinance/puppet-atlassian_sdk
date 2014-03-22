# Install the atlassian sdk
#
class atlassian_sdk {
  exec { 'add atlassian tap to hombrew':
    command => 'brew tap atlassian/tap'
  }

  package { 'atlassian/tap/atlassian-plugin-sdk':
    ensure   => 'latest',
    provider => 'homebrew',
    require  => Exec['add atlassian tap to hombrew']
  }
}
