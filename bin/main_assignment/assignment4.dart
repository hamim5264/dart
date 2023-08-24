abstract class Account {
  int accountNumber;
  double balance;

  Account(this.accountNumber, this.balance);

  void deposit(double amount) {
    balance = balance + amount;
    print('Deposited: ${amount}');
  }

  void withdraw(double amount);
}

class SavingsAccount extends Account {
  double interestRate;

  SavingsAccount(int accountNumber, double balance, this.interestRate): super(accountNumber, balance);

  @override
  void withdraw(double amount) {
    if (amount <= balance) {
      balance = balance - amount;
      balance = balance + (balance * interestRate);
      print('Withdrawn: ${amount}');
    } else {
      print('Insufficient funds');
    }
  }
}

class CurrentAccount extends Account {
  double overdraftLimit;

  CurrentAccount(int accountNumber, double balance, this.overdraftLimit)
      : super(accountNumber, balance);

  @override
  void withdraw(double amount) {
    if (amount <= balance + overdraftLimit) {
      balance = balance - amount;
      print('Withdrawn: ${amount}');
    } else {
      print('Insufficient funds');
    }
  }
}

void main() {
  // Creating a SavingsAccount instance
  var savingsAccount = SavingsAccount(15000, 1200.0, 0.5);
  savingsAccount.deposit(700.0);
  savingsAccount.withdraw(300.0);

  // Creating a CurrentAccount instance
  var currentAccount = CurrentAccount(65022, 2200.0, 1200.0);
  currentAccount.deposit(350.0);
  currentAccount.withdraw(2000.0);
}