class Doctor
  @@all = []

  attr_reader :name, :patient, :date

  def initialize(name)
    @name = name
    @@all << self
  end

  def self.all
    @@all
  end

  def appointments
    Appointment.all.select do |appointment|
      appointment.doctor == self
    end
  end

  def new_appointment(date, patient)
    new_appointment = Appointment.new(self, date, patient)
  end
end
