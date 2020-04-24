class Appointment
  @@all = []
  attr_reader :date, :name, :doctor
  def initialize(name, date, doctor)
    @name = name
    @date = date
    @doctor = doctor
    @@all << self
  end

  def self.all
    @@all
  end

  def patients
    Patient.all.select do |patient|
      patient.appointment == self
    end
  end
end
