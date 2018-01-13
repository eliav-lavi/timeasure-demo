class UpdateAnalyticsJob < ApplicationJob
  queue_as :default

  def perform(data)
    ActionCable.server.broadcast 'analytics_channel', data: data
  end
end
