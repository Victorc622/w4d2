require_relative 'Employee.rb'

class Manager < Employee
    attr_reader :name, :title, :salary, :boss, :employees

    def initialize(name, title, salary, boss)
        @name = name
        @title = title
        @salary = salary
        @boss = boss
        @boss.employees << self if @boss != nil
        @employees = []
    end

    def add_employee(employee)
        @employees << employee
    end
    def total_salary
        salary = 0
       @employees.each do |employee| 
            if employee.is_a?(Manager)
               salary += employee.salary
               salary += employee.total_salary
            else
                salary += employee.salary
            end
        end
       salary
    end
    def bonus(multiplier)
      self.total_salary * multiplier
    end
end