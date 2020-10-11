class Doctor
    @@all = []

    def initialize(name)
        @name = name
        @@all << self
    end

    attr_accessor :name

    def self.all
        @@all
    end

    def appointments
        Appointment.all.select { |appointment| appointment.doctor == self }
    end

    def new_appointment(patient, date)
        Appointment.new_appointment(date, patient, self)
    end

    def patients
        self.appointments.map { |appointment| appointment.patient }
    end
end