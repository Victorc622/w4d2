class Employee

    def initialize(name, title, salary, boss)
        @name = name
        @title = title
        @salary = salary
        @boss = boss
    end

    def bonus(multiplier)
        if @title != "manager"
            bonus = @salary * multiplier
        end
    end
end