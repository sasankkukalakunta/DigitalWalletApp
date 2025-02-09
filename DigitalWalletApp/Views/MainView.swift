//
//  MainView.swift
//  DigitalWalletApp
//
//  Created by kukalakunta sasank on 2/8/25.
//

import SwiftUI

struct MainView: View {
    @StateObject private var viewModel = WalletViewModel()

    var body: some View {
        NavigationView {
            List(viewModel.accounts) { account in
                NavigationLink(destination: WalletView(account: account, viewModel: viewModel)) {
                    VStack(alignment: .leading) {
                        Text(account.name)
                            .font(.headline)
                        Text("Balance: \(String(format: "$%.2f", account.balance))")
                            .font(.subheadline)
                            .foregroundColor(.gray)
                    }
                }
            }
            .navigationTitle("Digital Wallet")
        }
    }
}
