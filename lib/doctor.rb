class Doctor

  attr_accessor :name, :patient, :date

  @@all = []

  def self.all
    @@all
  end

  def initialize(name)
    @name = name
    @@all << self
  end

  def new_appointment(patient, date)
    Appointment.new()
  end

  def appointments
    Appointments.all.select {|x| x.doctor == self}
  end

  def patients
    self.appointments.collect {|x| x.patient}
  end

end
