class HomeController < ApplicationController
  def welcome
  end

  def demonstrate_single
    Profiling::Profiler.init
    10.times { TimeOffSubmitter.new(nil).submit }
    Profiling::Profiler.send_to_keen
  end
end
