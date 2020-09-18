class Doctor

    @@all = []

    attr_reader :name
    
    def initialize(name)
        @name = name
        @@all << self
    end

    def appointments
        Appointment.all.select do |appointment|
            appointment.doctor == self
        end
    end

    def new_appointment(patient, date)
        Appointment.new(date, patient, self)
    end

    def patients
        self.appointments.each_with_object([]) do |appointment, doc_pats|
            doc_pats << appointment.patient
        end
    end

    def self.all
        @@all
    end

end