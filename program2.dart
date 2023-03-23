// Create a BankAccount class with balance and accountNumber properties,
// and methods called deposit() and withdraw() that modify the balance property.
//Then create a CheckingAccount class that inherits from BankAccount and has a
//transactionLimit property. Override the withdraw() method in the
// CheckingAccount class to check if the withdrawal amount is within the
// transaction limit before modifying the balance property.

void main() {
  CheckingAccount Account = CheckingAccount(
    100000,
    123456789,
  );

  Account.withdraw(10000);
  print(" Balance after withdraw :${Account.balance}");

  Account.deposit(40000);
  print("Balance after deposit: ${Account.balance}");
}

class BankAccount {
  late double balance;
  late double accountNumber;

  BankAccount(this.balance, this.accountNumber);

  void deposit(double amount) {
    balance += amount;
  }

  void withdraw(double amount) {
    balance -= amount;
  }
}

class CheckingAccount extends BankAccount {
  double transactionLimit = 25000;

  CheckingAccount(
    double balance,
    double accountNumber,
  ) : super(balance, accountNumber);

  // override

  void withdraw(double amount) {
    if (amount <= transactionLimit) {
      balance -= amount;
    } else {
      print("withdrawal limit exceeds");
    }
  }
}
