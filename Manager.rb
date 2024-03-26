class Manager < Employee
    def initialize(employee)
        @employees = []
        @employees << employee
    end
end