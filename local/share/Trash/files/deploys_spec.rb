require "rails_helper"

RSpec.describe Api::V1::Collects::DeploysController do
  let(:he) { create(:hardware_endpoint, :kiosk) }
  let(:auth_headers) { { "Authorization" => "Token #{he.auth_token}" } }
  let(:system) { create(:collect_system).becomes(CollectSystem) }
  let!(:admin) { create(:admin, account_id: he.account.id, kiosk_token: '1234') }

  context "#index" do
    let(:locker) { create(:locker, :free, system: system, location: he.location, pin_code: '1234') }
    let!(:asset) { create(:collect_asset, :deploying, locker: locker, system: system) }

    it "return locker with deploying asset" do
      create(:locker, :free, system: system, location: he.location)
      get api_v1_collects_deploys_path(admin_token: '1234'), headers: auth_headers
      response = JSON.parse(response.body)
      raise response.map(|resp| resp[:locker_id]).inspect

      expect(response.body).to include(locker.serial_number.to_s)
    end
  end
end
