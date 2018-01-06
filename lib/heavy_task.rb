class HeavyTask
  def initialize(min_execution_time, max_exection_time)
    @runtime = rand(min_execution_time..max_exection_time)
  end

  def run
    sleep(@runtime)
    @runtime
  end
end
