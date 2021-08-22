# frozen_string_literal: true

class DailyReportWorker
  include Sidekiq::Worker

  def perform(*_args)
    Reports::HotDailies.call unless ENV["SKIP_HOT_DAILIES"] == "true"
    Reports::AssetDailies.call
    Reports::AllocatedSystemDailies.call unless ENV["SKIP_ALLOCATED_SYSTEM_DAILIES"] == "true"
    Reports::LockerBatteryReport.call
  end
end
