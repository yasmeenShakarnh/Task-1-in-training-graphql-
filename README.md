# 🛍️ Flutter Product Browser App

A simple and clean Flutter app that allows users to **search and filter products** using data from a remote GraphQL API.

This app is built with **Flutter + BLoC + GraphQL**, and supports:

- 🔍 Real-time autocomplete search by product name.
- 🧠 Multi-select category filters.
- ⚙️ Uses **GraphQL code generation** for strongly typed models and queries.
- 🧼 Clean UI with responsive and modern design.

---

## ✨ Features

- **Typeahead search**: As you type the product name, suggestions appear dynamically.
- **Category filtering**: Select one or more categories to filter search results.
- **GraphQL integration**:
  - Queries are generated using [graphql_codegen](https://pub.dev/packages/graphql_codegen).
  - Ensures safe and strongly typed access to your GraphQL schema.

---

## 📦 Dependencies

Main packages used:

- [`flutter_bloc`](https://pub.dev/packages/flutter_bloc)
- [`graphql_flutter`](https://pub.dev/packages/graphql_flutter)
- [`flutter_typeahead`](https://pub.dev/packages/flutter_typeahead)
- [`rxdart`](https://pub.dev/packages/rxdart)
- [`graphql_codegen`](https://pub.dev/packages/graphql_codegen)

---

## 🚀 Getting Started

1. Clone the repo:
   ```bash
   git clone https://github.com/yourusername/product-browser-app.git
   cd product-browser-app
