require 'bank'

describe 'a bank' do
    it 'deposits 1000 and has a balance of 1000' do
        bank = Bank.new
        bank.deposit(1000)
        expect(bank.balance).to eq 1000
    end    

    it 'deposits 1000 and 2000 and has a balance of 3000' do
        bank = Bank.new
        bank.deposit(1000)
        bank.deposit(2000)
        expect(bank.balance).to eq 3000
    end

    it 'can make a withdrawal of 300 from a balance of 1000' do
        bank = Bank.new
        bank.deposit(500)
        bank.deposit(500)
        bank.withdraw(300)
        balance = bank.balance
        expect(balance).to eq 700
    end

    it 'has a starting balance of 0' do
        bank = Bank.new
        expect(bank.balance).to eq 0
    end

    it 'gives a correct balance after multiple withdrawals' do 
        bank = Bank.new
        bank.deposit(500)
        bank.deposit(500)
        bank.withdraw(300)
        bank.withdraw(100)
        balance = bank.balance
        expect(balance).to eq 600
    end

    it 'gives an accurate balance after multiple withdrawals and deposits' do 
        bank = Bank.new
        bank.deposit(500)
        bank.deposit(500)
        bank.withdraw(300)
        bank.withdraw(100)
        bank.deposit(1000)
        balance = bank.balance
        expect(balance).to eq 1600
    end

    it 'can print a date of the statement' do
        bank = Bank.new 
        statement = bank.statement("14/01/2012")
        expect(statement).to eq "14/01/2012"
    end
end