//
//  WalletView.swift
//  DigitalWalletApp
//
//  Created by kukalakunta sasank on 2/8/25.
//

import SwiftUI

struct WalletView: View {
    let account: Account
    @ObservedObject var viewModel: WalletViewModel

    var body: some View {
        VStack {
            Text("Balance: \(String(format: "$%.2f", account.balance))")
                .font(.largeTitle)
                .padding()
            
            List(viewModel.getTransactions(for: account.id)) { transaction in
                HStack {
                    Text(transaction.type.rawValue.capitalized)
                        .foregroundColor(transaction.type == .income ? .green : .red)
                    Spacer()
                    Text(String(format: "$%.2f", transaction.amount))
                }
            }
            
            NavigationLink(destination: AddTransactionView(account: account, viewModel: viewModel)) {
                Text("Add Transaction")
                    .font(.headline)
                    .padding()
                    .background(Color.blue)
                    .foregroundColor(.white)
                    .cornerRadius(10)
            }
            .padding()
        }
        .navigationTitle(account.name)
    }
}
