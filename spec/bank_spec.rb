require 'bank'

describe 'bank' do
    it 'can deposit 1000 and has a balance of 1000' do
        bank = Bank.new
        bank.deposit(1000)
        balance = bank.balance
        expect(balance).to eq 1000
    end

    it 'can deposit 2000 and has a balance of 2000' do
        bank = Bank.new
        bank.deposit(2000)
        balance = bank.balance
        expect(balance).to eq 2000
    end
end
    