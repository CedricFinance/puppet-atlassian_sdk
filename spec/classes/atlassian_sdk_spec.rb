require 'spec_helper'

describe 'atlassian_sdk' do
  it do
    should contain_homebrew__tap("add atlassian tap to homebrew").with({
      :source => "atlassian/tap"
    })

    should contain_package('atlassian/tap/atlassian-plugin-sdk').with({
      :provider => 'homebrew',
      :ensure => "latest"
    })
  end
end
