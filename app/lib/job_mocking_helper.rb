module JobMockingHelper
  def go_to_sleep(type)
    sleep(milliseconds_from(type))
  end

  def milliseconds_from(type)
    case type
      when :a_little
        rand(10)/1000.to_f
      when :some
        rand(30)/1000.to_f
      when :a_lot
        rand(80)/1000.to_f
    end
  end

  def random_boolean?
    [true, false].sample
  end
end
