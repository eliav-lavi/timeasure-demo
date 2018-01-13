require 'timeasure'

Timeasure.configure do |configuration|
  configuration.post_measuring_proc = lambda do |base_class_name, method_name, t0, t1|
    Profiling::Profiler.report_method_call(base_class_name, method_name, t0, t1)
  end

  configuration.rescue_proc = lambda do |e, base_class|
    Rails.logger.error "Timeasure failed upon calling configuration.post_measuring_proc for class #{base_class}.
    Error: #{e}"
  end
end
