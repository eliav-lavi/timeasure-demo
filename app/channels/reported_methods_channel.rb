class ReportedMethodsChannel < ApplicationCable::Channel
  def subscribed
    stream_from 'reported_methods_channel'
  end
end
