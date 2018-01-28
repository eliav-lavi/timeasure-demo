class HomeController < ApplicationController
  def welcome
  end

  def demonstrate_single
    Profiling::Profiler.init
    TimeOffSubmitter.new(nil).submit
    Profiling::Profiler.send_to_redis
  end
end
