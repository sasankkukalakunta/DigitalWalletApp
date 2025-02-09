//
//  WalletViewModel.swift
//  DigitalWalletApp
//
//  Created by kukalakunta sasank on 2/8/25.
//

import Foundation

class WalletViewModel: ObservableObject {
    @Published var accounts: [Account] = [
        Account(name: "Personal Wallet", balance: 500.0),
        Account(name: "Savings Account", balance: 1000.0)
    ]
    
    @Published var transactions: [Transaction] = []

    func addTransaction(accountId: UUID, amount: Double, type: TransactionType, note: String) {
        guard let index = accounts.firstIndex(where: { $0.id == accountId }) else { return }
        
        // Update account balance
        if type == .income {
            accounts[index].balance += amount
        } else {
            accounts[index].balance -= amount
        }
        
        // Add a new transaction
        let transaction = Transaction(
            accountId: accountId,
            amount: amount,
            type: type,
            date: Date(),
            note: note
        )
        transactions.append(transaction)
    }
    
    func getTransactions(for accountId: UUID) -> [Transaction] {
        transactions.filter { $0.accountId == accountId }
    }
}
