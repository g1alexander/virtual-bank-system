//
//  VirtualBankSystem.swift
//  VirtualBankSystem
//
//  Created by g1alexander on 8/20/23.
//

import Foundation


class VirtualBankSystem {
    var accountType = ""
    var isOpened = true
    func welcomeCustomer() {
        print("Welcome to your virtual bank system.")
    }
    func onboardCustomerAccountOpening() {
        print("What kind of account would you like to open?")
        print("1. Debit account")
        print("2. Credit account")
    }
    func makeAccount(numberPadKey: Int) {
        print("The selected option is \(numberPadKey).")
        switch numberPadKey {
        case 1:
            accountType = "debit"
        case 2:
            accountType = "credit"
        default:
            print("Invalid input: \(numberPadKey)")
            return
        }
        print("You have opened a \(accountType) account.")
    }
    
    func moneyTransfer(transferType: String, transferAmount: Int, bankAccount: inout BankAccount){
        switch transferType{
        case "withdraw": do {
            if accountType == "credit" {
                bankAccount.creditWithdraw(transferAmount)
            }
            else if accountType == "debit" {
                bankAccount.debitWithdraw(transferAmount)
            }
        }
        case "deposit": do {
            if accountType == "credit" {
                bankAccount.creditDeposit(transferAmount)
            }
            else if accountType == "debit" {
                bankAccount.debitDeposit(transferAmount)
            }
        }
        default:
            break
        }
    }
    
    func checkBalance(bankAccount: BankAccount){
        switch accountType{
        case "credit": print(bankAccount.creditBalanceInfo)
        case "debit": print(bankAccount.debitBalanceInfo)
        default: break
        }
    }
}
