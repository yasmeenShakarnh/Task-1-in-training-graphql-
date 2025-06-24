# 🛍️ Flutter Product Browser App

A simple Flutter app that allows users to **search and filter products** from a real eCommerce backend using **Saleor GraphQL API**.

This project demonstrates clean architecture using **Flutter**, **BLoC**, **GraphQL**, and **code generation**, with a user-friendly UI and scalable code structure.

---

## ✨ Features

- 🔍 **Real-time Autocomplete Search**  
  Users can search for products dynamically by typing the **product name** only.

- 🧠 **Multi-Select Category Filtering**  
  After searching, users can refine results by selecting one or more categories.

- ⚙️ **GraphQL Code Generation**  
  The app uses [`graphql_codegen`](https://pub.dev/packages/graphql_codegen) to auto-generate strongly typed Dart classes from GraphQL queries and schema.

- 🌐 **Connected to Saleor API**  
  All product and category data is fetched live from [Saleor](https://saleor.io), a powerful open-source headless eCommerce platform.



## 📦 Dependencies

| Package | Purpose |
|--------|---------|
| [`flutter_bloc`](https://pub.dev/packages/flutter_bloc) | State management |
| [`graphql_flutter`](https://pub.dev/packages/graphql_flutter) | GraphQL API communication |
| [`graphql_codegen`](https://pub.dev/packages/graphql_codegen) | Code generation from GraphQL queries |
| [`flutter_typeahead`](https://pub.dev/packages/flutter_typeahead) | Autocomplete search |
| [`rxdart`](https://pub.dev/packages/rxdart) | Debounced search input |

---

