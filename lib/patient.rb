class Patient
  @@all = []

  attr_reader :name, :doctor, :appointment, :date

  def initialize(name)
    @name = name
    @doctor = doctor
    @appointment = appointment
    @date = date
    @@all << self
  end

  def self.all
    @@all
  end

  def new_appointment(date, doctor)
    new_appointment = Appointment.new(self, date, doctor)
  end

  def appointments
    Appointment.all.select do |appointment|
      appointment.patient == self
    end
  end

  def doctors
    appointments.map do |appointment|
      appointment.doctor
    end
  end
end
