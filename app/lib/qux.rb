class Qux
  include JobMockingHelper
  include Timeasure
  tracked_instance_methods :waldo, :fred, :plugh_from

  def waldo
    connection = fred
    rand(2..4).times { plugh_from(connection) }
  end

  def fred
    go_to_sleep(:a_little)
    :some_value
  end

  def plugh_from(fred)
    go_to_sleep(:some)
    :some_other_value
  end
end