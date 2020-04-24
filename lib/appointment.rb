class Appointment
  @@all = []
  attr_reader :date, :name, :doctor, :patient
  def initialize(name, date, doctor)
    @name = name
    @date = date
    @doctor = doctor
    @patient = patient
    @@all << self
  end

  def self.all
    @@all
  end

  def patient
    Patient.all.select do |patient|
      patient.appointment == self
    end
  end
end
