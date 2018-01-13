module Profiling
  class ReportedMethodCall
    def initialize(base_class_name, method_name, t0, t1)
      @base_class_name = base_class_name
      @method_name = method_name
      @t0 = t0
      @t1 = t1
    end

    def prepare_for_keen
      { method_path: method_path, runtime: runtime }
    end

    private

    def method_path
      "#{@base_class_name}##{@method_name}"
    end

    def runtime
      (@t1 - @t0) * 1000
    end
  end
end
