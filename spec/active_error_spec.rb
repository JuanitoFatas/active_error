require "spec_helper"

RSpec.describe ActiveError do
  it "has a version number" do
    expect(ActiveError::VERSION).not_to be nil
  end

  describe ".new" do
    context "when error class is given" do
      it "create an exception with message" do
        exception = ActiveError.new(StandardError, "failed lor")

        expect(exception.message).to eq "failed lor"
      end

      it "create an exception with message and backtrace" do
        exception = ActiveError.new(StandardError, "failed lor", backtrace: ["1", "2", "3"])

        expect(exception.backtrace).to eq ["1", "2", "3"]
      end
    end

    context "when error class is not given" do
      it "defaults to StandardError" do
        exception = ActiveError.new("failed lor")

        expect(exception).to be_a StandardError
      end

      it "accepts message as first argument" do
        exception = ActiveError.new("failed lor")

        expect(exception.message).to eq "failed lor"
      end

      it "accepts backtrace as second argument" do
        exception = ActiveError.new("failed lor", backtrace: %w(1 2 3))

        expect(exception.backtrace).to eq %w(1 2 3)
      end

      it "specifies error messages twice, default to first one" do
        exception = ActiveError.new("failed lor", "failed lah")

        expect(exception.message).to eq "failed lor"
      end
    end
  end
end
