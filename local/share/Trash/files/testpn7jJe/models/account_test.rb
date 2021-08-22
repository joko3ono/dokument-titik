require "test_helper"

class AccountTest < ActiveSupport::TestCase
  context "association" do
    should have_many(:users).dependent(:destroy)
  end
end
