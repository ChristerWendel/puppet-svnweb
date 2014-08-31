require 'spec_helper'

describe 'svnweb', :type => :class do
  let(:title) { 'svnweb::install' }

  context 'with default parameters' do
    it { should contain_package('libapache2-mod-svn')
        .with_ensure('present')
    }
  end

  context 'version => present' do
    let(:params) { {:version => 'present'} }

    it { should contain_package('libapache2-mod-svn')
        .with_ensure('present')
    }
  end

  context 'version => latest' do
    let(:params) { {:version => 'latest'} }

    it { should contain_package('libapache2-mod-svn')
        .with_ensure('latest')
    }
  end
end
