require 'spec_helper'
describe 'psprompt' do

  context 'with default options' do
    it {
      should include_class('psprompt')
    }
  end
end
