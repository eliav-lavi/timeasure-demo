class HeavyTask
  include Timeasure

  def initialize(min_execution_time, max_execution_time)
    @runtime = rand(min_execution_time..max_execution_time)
  end

  def run
    sleep(@runtime)
    @runtime
  end
end
