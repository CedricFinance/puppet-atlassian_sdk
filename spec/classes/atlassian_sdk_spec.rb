require 'spec_helper'

describe 'atlassian_sdk' do
  it do
    should contain_exec("add atlassian tap to hombrew").with({
      :command => "brew tap atlassian/tap",
    })
  end
end
