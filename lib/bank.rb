class Bank 
    def initialize
        @balance = 0
    end

    def deposit(amount)
        @balance = @balance + amount
    end

    def balance 
        @balance
    end

    def withdraw(amount)
        @balance = @balance - amount
    end

    def statement 
        "14/01/2012"
    end

end 