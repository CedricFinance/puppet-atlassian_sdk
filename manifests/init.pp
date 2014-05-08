# Install the atlassian sdk
#
class atlassian_sdk ($package_ensure = 'installed') {
  homebrew::tap { 'add atlassian tap to homebrew':
    source => 'atlassian/tap'
  }

  package { 'atlassian/tap/atlassian-plugin-sdk':
    ensure   => $package_ensure,
    provider => 'homebrew',
    require  => Homebrew::Tap['add atlassian tap to homebrew']
  }
}
