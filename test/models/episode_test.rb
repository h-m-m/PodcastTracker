require "test_helper"

describe Episode do
  let(:episode) { Episode.new }

  it "must be valid" do
    episode.must_be :valid?
  end
end
