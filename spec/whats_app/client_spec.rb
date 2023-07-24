require 'spec_helper'

RSpec.describe WhatsApp::Client do
  subject { described_class.new }

  before do
    WhatsApp.configure do |config|
      config.number_identification = '5511999999999'
      config.token = 'token'
    end
  end

  it 'defaults number_identification to the configured value' do
    expect(subject.number_identification).to eq('5511999999999')
  end

  it 'defaults token to the configured value' do
    expect(subject.token).to eq('token')
  end
end
