require 'pry'
class Patient
    @@all = []

    def initialize(name)
        @name = name
        @@all << self
    end

    attr_accessor :name

    def self.all
        @@all
    end

    def new_appointment(doctor, date)
        Appointment.new_appointment(date, self, doctor)
    end

    def appointments
        Appointment.all.select { |appointment| appointment.patient == self }
    end

    def doctors
        self.appointments.map { |appointment|
            if appointment.patient == self
                appointment.doctor
            end  
        }
    end
end