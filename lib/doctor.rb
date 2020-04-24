class Doctor
  @@all = []

  attr_reader :name, :patient

  def initialize(name, patient)
    @name = name
    @patient = patient
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
end
