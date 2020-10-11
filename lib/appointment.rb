require 'pry'
class Appointment
    @@all = []

    def initialize(date, patient, doctor)
        @date = date
        @patient = patient
        @doctor = doctor
        @@all << self
    end

    attr_accessor :date, :patient, :doctor

    def self.all
        @@all
    end

    def self.new_appointment(date, patient, doctor)
        self.new(date, patient, doctor)
    end
end