require 'spec_helper'

RSpec.describe WhatsApp::Configuration do
  subject { described_class.new }

  it 'defaults number_identification to nil' do
    expect(subject.number_identification).to be_nil
  end

  it 'defaults token to nil' do
    expect(subject.token).to be_nil
  end
end
