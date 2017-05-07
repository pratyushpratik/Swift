class BankAccount {
    let name: String
    var balance: Int

    init(name: String, initialBalanceInCents balance: Int) {
        self.name = name
        self.balance = balance
    }

    func toDouble() -> Double {
        return Double(self.balance) / 100.0
    }

    func deposit(amount: Int) -> Int {
        self.balance += amount
        return self.balance
    }

    func withdraw(amount: Int) -> Int {
        self.balance -= amount
        return self.balance
    }
}