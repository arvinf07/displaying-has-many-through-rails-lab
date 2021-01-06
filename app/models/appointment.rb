class Appointment < ApplicationRecord
  belongs_to :doctor
  belongs_to :patient

  def date
    date = self.appointment_datetime
    "#{date.strftime('%B %d')}, #{date.strftime('%Y')} at #{date.strftime('%k')}:#{date.strftime('%M')}"
  end  

end
