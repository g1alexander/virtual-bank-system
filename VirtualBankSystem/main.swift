//
//  main.swift
//  VirtualBankSystem
//
//  Created by g1alexander on 8/19/23.
//

import Foundation

let virtualBankSystem = VirtualBankSystem()
virtualBankSystem.welcomeCustomer()
repeat {
    virtualBankSystem.onboardCustomerAccountOpening()
    let numberPadKey = Int.random(in: 1...3)
    virtualBankSystem.makeAccount(numberPadKey: numberPadKey)
} while virtualBankSystem.accountType == ""

let transferAmount = 50
print("Transfer amount: $\(transferAmount)")
var bankAccount = BankAccount()


repeat {
    print("--------------------------")
    print("What would you like to do?")
    print("1. Check bank account")
    print("2. Withdraw money")
    print("3. Deposit money")
    print("4. Close the system")
    print("--------------------------")
    
    let option: Int
    if let optionInput = readLine() {
        option =  Int(optionInput) ?? 5
        print("The selected option is \(option).")
    } else {
        option = 5
    }
    
    
    switch option {
    case 1: virtualBankSystem.checkBalance(bankAccount: bankAccount)
    case 2: virtualBankSystem.moneyTransfer(transferType: "withdraw", transferAmount: transferAmount, bankAccount: &bankAccount)
    case 3: virtualBankSystem.moneyTransfer(transferType: "deposit", transferAmount: transferAmount, bankAccount: &bankAccount)
    case 4: do {
        virtualBankSystem.isOpened = false
        print("The system is closed.")
    }
    default: break
    }
} while virtualBankSystem.isOpened
