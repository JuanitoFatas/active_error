require "spec_helper"

RSpec.describe ActiveError do
  it "has a version number" do
    expect(ActiveError::VERSION).not_to be nil
  end

  describe ".new" do
    it "create an exception with message" do
      exception = ActiveError.new(StandardError, "failed lor")

      expect(exception.message).to eq "failed lor"
    end

    it "create an exception with message and backtrace" do
      exception = ActiveError.new(StandardError, "failed lor", backtrace: ["1", "2", "3"])

      expect(exception.backtrace).to eq ["1", "2", "3"]
    end
  end
end
