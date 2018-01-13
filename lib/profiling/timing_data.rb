module Profiling
  class TimingData
    def initialize
      @reported_method_calls = []
    end

    def report_method_call(base_class_name, method_name, t0, t1)
      @reported_method_calls << ReportedMethodCall.new(base_class_name, method_name, t0, t1)
    end

    def prepare_for_keen
      @reported_method_calls.map(&:prepare_for_keen)
    end
  end
end
