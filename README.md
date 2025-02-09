🛠️ Digital Wallet App

A Digital Wallet App built using SwiftUI and MVVM architecture. This app allows users to manage multiple wallet accounts, track transactions (income and expenses), and view real-time balances. Designed with modern SwiftUI features, this app is scalable, efficient, and user-friendly.

🚀 Features

Account Management: Add and manage multiple wallet accounts with individual balances.

Transaction Tracking: Record income and expenses with notes, dates, and categories.

Dynamic Balances: Real-time updates to account balances based on transactions.

Modern UI/UX: Built with SwiftUI for a clean and responsive interface.

Local Persistence: Data is stored locally for a seamless offline experience.

🛠️ Technologies Used:
SwiftUI: Declarative UI framework for creating the app’s user interface.

MVVM Architecture: Ensures a clean separation of concerns and scalability.

Combine: Used for state management with @Published and @StateObject.

Local Storage: Uses @Published variables for persisting data locally.

🌟 Future Enhancements

Here are some ideas for future development:

Spending Analytics:Add charts to visualize spending patterns and income trends.

Cloud Sync:Sync data across devices using CloudKit or Firebase.

Dark Mode:Implement light and dark themes for better user adaptability.

Currency Support:Add multi-currency support for international users.

📂 Project Structure:

The app is modularly structured for scalability and easy maintenance:
DigitalWalletApp/
├── Models/
│   ├── Account.swift          # Account data model
│   ├── Transaction.swift      # Transaction data model
├── ViewModels/
│   ├── WalletViewModel.swift  # Manages wallet accounts and transactions
├── Views/
│   ├── MainView.swift         # Entry point with account list
│   ├── WalletView.swift       # Displays account details
│   ├── AddTransactionView.swift # Form for adding transactions
│   ├── TransactionListView.swift # Displays transactions for an account
├── DigitalWalletApp.swift     # App entry point
