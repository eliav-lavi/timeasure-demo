class TimeOffSubmitter
  include Timeasure
  tracked_instance_methods :submit, :submit_sick_request, :submit_vacation_request,
                           :request_is_sick_time?, :request_is_vacation?, :employee

  def initialize(time_off_request)
    @time_off_request = time_off_request
  end

  def submit
    if request_is_sick_time?
      submit_sick_request
    elsif request_is_vacation?
      submit_vacation_request
    else
      :type_invalid
    end
  end

  private

  def request_is_sick_time?
    sleep(rand(100)/1000.to_f)
    random_boolean

    # @time_off_request.reason == TimeOff::REASON_SICK
  end

  def request_is_vacation?
    sleep(rand(50)/1000.to_f)
    random_boolean

    # @time_off_request.reason == TimeOff::REASON_VACATION || @time_off_request.reason.blank?
  end

  def submit_sick_request
    sleep(rand(50)/1000.to_f)
    employee#.register_time_off(@time_off_request)
    # :registration_successful
  end

  def submit_vacation_request
    sleep(rand(75)/1000.to_f)
    return :insufficient_days if employee#.has_available_days_off?(@time_off_request.days)
    employee#.register_time_off(@time_off_request)
    # :registration_successful
  end

  def employee
    sleep(rand(10)/1000.to_f)
    random_boolean

    # @time_off_request.employee
  end

  ###

  def random_boolean
    [true, false].sample
  end
end
