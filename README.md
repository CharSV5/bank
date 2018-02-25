# Introduction

For this workshop task at Makers, we were to construct a bank account programme consisting of one class to print out a predefined bank statement that looked like this:

```
date || credit || debit || balance
14/01/2012 || || 500.00 || 2500.00
13/01/2012 || 2000.00 || || 3000.00
10/01/2012 || 1000.00 || || 1000.00
```

I created a deposit and withdraw method and stored the returning values in a hash, I fed that hash to an array tracking the history of the account and was able to recall this information easily enough when I wanted to print it. Throughout the whole process, I constantly tested everything in irb.

To mimic the actions of the user, I created a method, just to make it easier when loading the file.

## Specifications

To run this file, clone and run:
```
ruby bank.rb
```
