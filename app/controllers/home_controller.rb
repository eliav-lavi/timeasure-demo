class HomeController < ApplicationController
  def welcome
  end

  def action
    task = HeavyTask.new(1.0, 2.0).run
    render plain: task
  end
end
