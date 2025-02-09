//
//  AddTransactionView.swift
//  DigitalWalletApp
//
//  Created by kukalakunta sasank on 2/8/25.
//

import SwiftUI

struct AddTransactionView: View {
    let account: Account
    @ObservedObject var viewModel: WalletViewModel
    @Environment(\.presentationMode) var presentationMode

    @State private var amount: String = ""
    @State private var type: TransactionType = .income
    @State private var note: String = ""

    var body: some View {
        Form {
            TextField("Amount", text: $amount)
                .keyboardType(.decimalPad)
            
            Picker("Transaction Type", selection: $type) {
                Text("Income").tag(TransactionType.income)
                Text("Expense").tag(TransactionType.expense)
            }
            .pickerStyle(SegmentedPickerStyle())
            
            TextField("Note", text: $note)
            
            Button("Add Transaction") {
                if let amountValue = Double(amount) {
                    viewModel.addTransaction(
                        accountId: account.id,
                        amount: amountValue,
                        type: type,
                        note: note
                    )
                    presentationMode.wrappedValue.dismiss()
                }
            }
            .disabled(amount.isEmpty)
        }
        .navigationTitle("Add Transaction")
    }
}
