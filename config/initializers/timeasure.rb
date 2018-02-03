require 'timeasure'

Timeasure.configure do |configuration|
  configuration.post_measuring_proc = lambda do |measurement|
    Profiling::Profiler.report_method_call(measurement.klass_name, measurement.method_name, measurement.t0, measurement.t1)
  end

  configuration.rescue_proc = lambda do |e, base_class|
    Rails.logger.error "Timeasure failed upon calling configuration.post_measuring_proc for class #{base_class}.
    Error: #{e}"
  end
end
