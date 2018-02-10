require 'timeasure'

Timeasure.configure do |configuration|
  configuration.rescue_proc = lambda do |e, base_class|
    Rails.logger.error "Timeasure failed upon calling configuration.post_measuring_proc for class #{base_class}.
    Error: #{e}"
  end
end
