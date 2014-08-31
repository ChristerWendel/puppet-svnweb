require 'spec_helper'

describe 'svnweb', :type => :class do
  let(:title) { 'svnweb::configure' }

  it { should contain_file('/etc/apache2/conf-available/svn.conf')
    .with_ensure('present')
    .with_owner('www-data')
    .with_group('www-data')
    .with_mode('0644')
    .that_comes_before('Apache::loadconf[svn]')
  }
end
