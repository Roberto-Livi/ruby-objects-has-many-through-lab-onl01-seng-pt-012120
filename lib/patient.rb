class Patient
  
  attr_accessor :name, :appointment, :doctor
  
  @@all = []
  
  def initialize(name)
    @name = name
    @@all << self
  end
  
  def new_appointment(doctor, date)
    appointment = Appointment.new(date, self, doctor)
  end
  
  def self.all
    @@all
  end
  
  def appointments(patient)
    Appointment.all.select {|appointment| appointment.patient}
  end
  
  def doctors
    Appointment.all.map {|appointment| appointment.doctor}
  end
  
end