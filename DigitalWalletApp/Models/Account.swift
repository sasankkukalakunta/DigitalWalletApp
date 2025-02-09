//
//  Account.swift
//  DigitalWalletApp
//
//  Created by kukalakunta sasank on 2/8/25.
//

import Foundation

struct Account: Identifiable, Codable {
    let id = UUID()
    var name: String
    var balance: Double
}
