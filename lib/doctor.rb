class Doctor
  @@all = []

  attr_reader :name, :date, :patient, :appointment

  def initialize(name)
    @name = name
    @date = date
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

  def new_appointment(date, patient)
    new_appointment = Appointment.new(patient, date, self)
  end

  def patients
    appointments.map do |appointment|
      appointment.patient
    end
  end
end
