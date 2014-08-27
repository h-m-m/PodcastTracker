require "test_helper"

describe Podcast do
  let(:podcast) { Podcast.new }

  it "must be valid" do
    podcast.must_be :valid?
  end
end
