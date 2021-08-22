# frozen_string_literal: true

class HotCheckerWorker
  include Sidekiq::Worker

  def perform(*_args)
    Reports::HotChecker.call
  end
end
