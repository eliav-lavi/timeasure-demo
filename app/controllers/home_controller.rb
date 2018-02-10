class HomeController < ApplicationController
  def welcome
  end

  def run_demo_job
    Timeasure::Profiling::Manager.prepare
    TimeOffSubmitter.new(nil).submit

    ActionCable.server.broadcast 'reported_methods_channel', events: Timeasure::Profiling::Manager.export
  end
end
