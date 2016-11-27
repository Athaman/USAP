require 'spec_helper'
describe 'configurecheckin' do

  context 'with defaults for all parameters' do
    it { should contain_class('configurecheckin') }
  end
end
