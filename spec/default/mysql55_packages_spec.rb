require 'spec_helper'

describe package('mysql55-mysql') do
  it { should be_installed }
end

describe package('mysql55-mysql-server') do
  it { should be_installed }
end
