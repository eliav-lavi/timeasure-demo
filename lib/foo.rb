class Foo
  include JobMockingHelper
  include Timeasure
  tracked_instance_methods :bar, :something_heavy, :something_lighter, :compute, :something_optional

  def initialize(qux)
    @qux = qux
  end

  def bar
    data = something_heavy
    arranged_data = something_lighter(data)
    compute(arranged_data)
  end

  private

  def something_heavy
    @qux.waldo
    go_to_sleep(:a_lot)
    :some_return_value
  end

  def something_lighter(data)
    rand(3..5).times { something_optional } if random_boolean?
    go_to_sleep(:some)
    :another_return_value
  end

  def something_optional
    go_to_sleep(:a_little)
  end

  def compute(arranged_data)
    random_boolean? ? go_to_sleep(:a_little) : go_to_sleep(:some)
    :final_return_value
  end
end