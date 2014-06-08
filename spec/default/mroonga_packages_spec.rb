require 'spec_helper'

describe package('mysql55-mroonga') do
  it { should be_installed }
end

describe package('groonga-tokenizer-mecab') do
  it { should be_installed }
end

describe package('groonga-normalizer-mysql') do
  it { should be_installed }
end
