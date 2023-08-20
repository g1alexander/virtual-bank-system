//
//  part2.swift
//  VirtualBankSystem
//
//  Created by g1alexander on 8/19/23.
//

import Foundation
//
//struct BankAccount {
//    var debitBalance = 0
//    var creditBalance = 0
//    let creditLimit = 100
//    
//    var debitBalanceInfo: String {
//        return "Debit balance: $\(debitBalance)"
//    }
//    
//    var availableCredit: Int { return creditLimit + creditBalance }
//    
//    var creditBalanceInfo: String {
//        return "Available credit: $\(availableCredit)"
//    }
//    
//    
//    mutating func debitDeposit(_ amount: Int){
//        debitBalance += amount
//        
//        if amount > 0 {
//            print("Debit deposit: $\(amount). \(debitBalanceInfo)")
//        }
//        
//    }
//    
//    mutating func creditDeposit(_ amount: Int){
//        creditBalance += amount
//        if amount > 0 {
//            print("Credit deposit: $\(amount). \(creditBalanceInfo)")
//        }
//        
//        if creditBalance == 0 {
//            print("Paid off credit balance.")
//        }
//        else if creditBalance > 0 {
//            print("Overpaid credit balance.")
//        }
//        
//    }
//    
//    mutating func debitWithdraw (_ amount: Int){
//        if amount > debitBalance {
//            print("Insufficient fund to withdraw $\(amount). \(debitBalanceInfo)")
//        }
//        else {
//            debitBalance -= amount
//            print("Debit withdraw: $\(amount). \(debitBalanceInfo)")
//        }
//    }
//    
//    mutating func creditWithdraw (_ amount: Int){
//        if amount > availableCredit {
//            print("Insufficient credit to withdraw $\(amount). \(creditBalanceInfo)")
//        }
//        else {
//            creditBalance -= amount
//            print("Credit withdraw: $\(amount). \(creditBalanceInfo)")
//        }
//    }
//    
//    
//}
//
//
//var bank = BankAccount()
//
//print(bank.debitBalanceInfo)
//bank.debitDeposit(100)
//bank.debitWithdraw(20)
//bank.debitWithdraw(81)
//
//print(bank.creditBalanceInfo)
//bank.creditWithdraw(101)
//bank.creditWithdraw(100)
//bank.creditDeposit(50)
//bank.creditDeposit(50)
//bank.creditDeposit(100)
