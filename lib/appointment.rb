class Appointment

    @@all = []

    attr_reader :patient, :doctor, :date

    def initialize(date, patient, doctor)
        @patient = patient
        @date = date
        @doctor = doctor
        self.class.all << self
    end

    def self.all
        @@all
    end

end