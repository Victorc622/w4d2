
class Employee

    attr_reader :name, :title, :salary, :boss, :employees

    def initialize(name, title, salary, boss)
        @name = name
        @title = title
        @salary = salary
        @boss = boss
        @boss.employees << self if @boss != nil
        @employees = []
    end


    def bonus(multiplier)
        bonus = @salary * multiplier 
    end
end