//
//  Transaction.swift
//  DigitalWalletApp
//
//  Created by kukalakunta sasank on 2/8/25.
//

import Foundation

enum TransactionType: String, Codable {
    case income
    case expense
}

struct Transaction: Identifiable, Codable {
    let id = UUID()
    let accountId: UUID
    var amount: Double
    var type: TransactionType
    var date: Date
    var note: String
}
