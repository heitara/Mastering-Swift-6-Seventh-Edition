//
//  Sendable.swift
//  Chapter 14
//
//  Created by Jon Hoffman on 7/3/24.
//

import Foundation

struct Transaction {
    let id: Int
    let amount: Double
    let description: String
}

actor BankAccount1 {
    private var transactions = [Transaction]()

    func addTransaction(_ transaction: Transaction) {
        transactions.append(transaction)
        print("Adding Transaction: \(transaction.id)")
    }
}


func testSendable() {
    let account1 = BankAccount1()
    let trans1 = Transaction(id: 1, amount: 100, description: "Test")
    let trans2 = Transaction(id: 2, amount: 200, description: "Test")
    
    Task {
        await account1.addTransaction(trans1)
        await account1.addTransaction(trans2)
    }
}
