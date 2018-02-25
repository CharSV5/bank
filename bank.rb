class BankAccount
  attr_reader :date, :balance, :transaction, :history
  def initialize(balance = 0)
    @balance = balance
    @transaction = { date: date, credit: '', debit: '', balance: balance }
    @history = []
  end

  def deposit(date, amount)
    @balance += amount
    @transaction = { date: date, credit: amount, debit: '', balance: @balance }
  end

  def withdraw(date, amount)
    @balance -= amount
    @transaction = { date: date, credit: '', debit: amount, balance: @balance }
  end

  def print_statement_header
    puts 'date || credit || debit || balance'
  end

  def print_statement
    "#{@transaction[:date]} || #{@transaction[:credit]} || "\
    "#{@transaction[:debit]} || #{@transaction[:balance]}"
  end

  # this method mimics actions by the user
  def recall_history
    deposit('10/01/2012', 1000)
    @history.unshift(print_statement)
    deposit('13/01/2012', 2000)
    @history.unshift(print_statement)
    withdraw('14/01/2012', 500)
    @history.unshift(print_statement)
    puts @history.sort { |a, b| b <=> a }
  end
end

account = BankAccount.new
account.print_statement_header
account.recall_history
