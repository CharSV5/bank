class BankAccount
  attr_reader :date, :balance, :transactions :history
  def initialize(balance = 0)
    @balance = balance
    @transactions = {date: date, credit: "", debit: "", balance: balance}
    @history = []
  end

  def deposits(date, amount)
    @transactions[:date] = date
    @balance += amount
    @transactions[:balance] = @balance
    @transactions[:debit] = nil
    @transactions[:credit] = amount
  end

  def withdrawals(date, amount)
    @transactions[:date] = date
    @balance -= amount
    @transactions[:balance] = @balance
    @transactions[:credit] = nil
    @transactions[:debit] = amount
  end

  def date
    @date
  end

  def print_statement_header
    p "date || credit || debit || balance"
  end
  def print_statement
    p "#{@transactions[:date]} || #{@transactions[:credit]} ||
      #{@transactions[:debit]} || #{@transactions[:balance]}"
  end
end
account = BankAccount.new
