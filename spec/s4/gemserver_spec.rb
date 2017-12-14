require "spec_helper"

RSpec.describe S4::Gemserver do
  it "has a version number" do
    expect(S4::Gemserver::VERSION).not_to be nil
  end

  it "does something useful" do
    expect(false).to eq(true)
  end
end
