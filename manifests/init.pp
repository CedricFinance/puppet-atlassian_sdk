# Install the atlassian sdk
#
class atlassian_sdk {
  homebrew::tap { 'add atlassian tap to homebrew':
    source => 'atlassian/tap'
  }

  package { 'atlassian/tap/atlassian-plugin-sdk':
    ensure   => 'latest',
    provider => 'homebrew',
    require  => Homebrew::Tap['add atlassian tap to homebrew']
  }
}
