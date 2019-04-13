class Patient

  attr_accessor :name

  @@all = []

  def self.all
    @@all
  end

  def initialize(name)
    @name = name
    @@all << self
  end

  def new_appointment(doctor, date)
    Appointment.new(date, self, doctor)
  end

  def appointments
    Appointment.all.select {|x| x.patient == self}
  end

  def doctors
    self.appointments.collect {|x| x.doctor}
  end

end
