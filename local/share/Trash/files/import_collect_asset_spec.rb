# frozen-string_literal: true

require "rails_helper"

RSpec.describe ImportCollectAsset do
  let(:system) { create :collect_system }
  let(:locker) { create :locker, :free, system: system }
  let(:asset) { create :collect_asset }
  let(:asset_hash) do
    {
      uid: 1_000_000_000,
      asset_type_id: create(:asset_type, system: system).id,
      serial_number: 20_210,
      status: "free",
      condition: "operational",
    }.with_indifferent_access
  end

  context "#call" do
    before { locker }

    it "create new asset" do
      expect { described_class.call(asset_hash, system) }.to change(Collect::Asset, :count).by(1)
    end

    it "create new asset and deploy" do
    end
  end
end
