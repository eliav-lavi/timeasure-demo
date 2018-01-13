module Profiling
  class Profiler
    class << self
      def init
        @timing_data = ::Profiling::TimingData.new
      end

      def report_method_call(base_class_name, method_name, t0, t1)
        @timing_data.report_method_call(base_class_name, method_name, t0, t1)
      end

      def send_to_keen
        Keen.publish_batch(measured_methods: @timing_data.prepare_for_keen)
      end
    end
  end
end
