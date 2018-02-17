class HomeController < ApplicationController
  def welcome
  end

  def run_demo_job
    Timeasure::Profiling::Manager.prepare
    injected_qux = Qux.new
    Foo.new(injected_qux).bar

    @events = Timeasure::Profiling::Manager.export
    respond_to :js
  end
end
