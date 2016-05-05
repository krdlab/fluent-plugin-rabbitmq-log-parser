require 'spec_helper'

describe Fluent::Plugin::Rabbitmq::Log::Parser do
  it 'has a version number' do
    expect(Fluent::Plugin::Rabbitmq::Log::Parser::VERSION).not_to be nil
  end

  it 'does something useful' do
    expect(false).to eq(true)
  end
end
