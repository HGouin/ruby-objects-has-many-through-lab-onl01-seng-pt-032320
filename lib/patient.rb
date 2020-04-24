class Patient
  @@all = []

  attr_reader :name

  def initialize(name)
    @name = name
    @@all << self
  end

  def self.all
    @@all
  end

  def new_appointment(date, doctor)
    new_appointment = Appointment.new(self, date, doctor)
  end

  def appointments
    Appoinment.all.select do |appointment|
      appointment.patient == self
    end
  end
end
