# frozen_string_literal: true

class HotCheckerJob < ApplicationJob

  def perform(*_args)
    Reports::HotChecker.call
  end
end
