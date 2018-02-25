class BankAccount
  attr_reader :date, :balance, :transactions, :history
  def initialize(balance = 0)
    @balance = balance
    @transactions = {date: date, credit: '', debit: '', balance: balance}
    @history = []
  end

  def deposit(date, amount)
    @balance += amount
    @transactions = {date: date, credit: amount, debit: '', balance: @balance}
  end

  def withdraw(date, amount)
    @balance -= amount
    @transactions = {date: date, credit: '', debit: amount, balance: @balance}
  end


  def print_statement_header
    p 'date || credit || debit || balance'
  end
  def print_statement
    p "#{@transactions[:date]} || #{@transactions[:credit]} ||
      #{@transactions[:debit]} || #{@transactions[:balance]}"
  end
end
account = BankAccount.new
account.deposit('10/01/2012', 1000)
account.print_statement
account.history.push(account.print_statement)
account.deposit('13/01/2012', 2000)
account.history.push(account.print_statement)
