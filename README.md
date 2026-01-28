# ShopApp - E-Commerce Flutter Application

A modern, feature-rich e-commerce application built with Flutter. ShopApp allows users to browse products, filter by category, manage shopping carts, and complete purchases with a smooth user experience.

## Features

- ✅ **User Authentication** - Secure login/logout functionality using FakeStore API
- ✅ **Product Browsing** - Browse products from the FakeStore API with detailed information
- ✅ **Category Filtering** - Filter products by category with an intuitive chip interface
- ✅ **Shopping Cart** - Add/remove items, adjust quantities, and view cart totals
- ✅ **Product Details** - View comprehensive product information including ratings and descriptions
- ✅ **Checkout** - Complete purchase flow with order confirmation
- ✅ **State Management** - Provider-based state management for cart and authentication
- ✅ **Responsive Design** - Clean, modern UI with Material Design principles

## Project Structure

```
lib/
├── main.dart                          # App entry point with MultiProvider setup
├── models/
│   └── product_model.dart             # Product, Rating, CartItem data models
├── services/
│   └── api_service.dart               # FakeStore API integration
├── providers/
│   ├── auth_provider.dart             # Authentication state management
│   └── cart_provider.dart             # Shopping cart state management
├── screens/
│   ├── login/login_screen.dart         # User login page
│   ├── home/home_screen.dart           # Product list with category filtering
│   ├── details/product_detail.dart     # Product detail view with add to cart
│   └── cart/cart_screen.dart           # Shopping cart & checkout
└── widgets/
    └── product_card.dart              # Reusable product card component
```

## Getting Started

### Prerequisites

- Flutter SDK 3.10.0 or higher
- Dart SDK 3.10.0 or higher
- macOS, iOS, Android, or Web platform setup

### Installation

1. **Clone or navigate to the project:**
   ```bash
   cd ecommerce_app
   ```

2. **Get dependencies:**
   ```bash
   flutter pub get
   ```

3. **Run the app:**
   ```bash
   flutter run
   ```

   Or run on a specific device:
   ```bash
   flutter run -d macos    # macOS
   flutter run -d chrome   # Web browser
   ```

## Test Credentials

Login with the following test credentials:
- **Username:** `mor_2314`
- **Password:** `83r5^_`

These credentials are pre-filled in the login screen for convenience.

## Dependencies

- **flutter** - Flutter SDK
- **provider** (^6.1.1) - State management solution
- **http** (^1.1.0) - HTTP client for API calls

## API Integration

This app uses the **FakeStore API** for product data:
- Base URL: `https://fakestoreapi.com`
- Endpoints:
  - `/products` - Get all products
  - `/products/categories` - Get product categories
  - `/products/category/{category}` - Get products by category
  - `/auth/login` - User authentication

## Usage

### Browsing Products
1. Login with test credentials
2. Browse products on the home screen
3. Use category chips to filter by category

### Shopping
1. Tap on a product card to view details
2. Click "Add to Cart" to add items
3. Tap the shopping cart icon to view your cart
4. Adjust quantities or remove items as needed

### Checkout
1. Review your cart items and total
2. Click "Checkout" to complete the purchase
3. Confirm the order in the dialog
4. Cart clears after successful checkout

## Key Features Explained

### State Management with Provider
- **CartProvider**: Manages shopping cart state including items, quantities, and totals
- **AuthProvider**: Handles user authentication and session management

### API Service
- Centralized API calls with error handling
- Asynchronous operations for smooth UX
- JSON serialization/deserialization for data models

### Responsive UI
- Material Design components
- Adaptive layouts for different screen sizes
- Error handling and loading states

## Future Enhancements

- User registration and account management
- Wishlist functionality
- Order history tracking
- Payment gateway integration
- Product reviews and ratings
- Search functionality
- Favorites/bookmarks
- Push notifications

## Troubleshooting

### Build Issues
If you encounter build errors:
```bash
flutter clean
flutter pub get
flutter run
```

### Dependencies Issues
Update dependencies:
```bash
flutter pub upgrade
```

Check outdated packages:
```bash
flutter pub outdated
```

## License

This project is open source and available under the MIT License.

## Support

For issues or questions, please check the Flutter documentation at https://docs.flutter.dev/

## Author

Created as a modern e-commerce application template using Flutter and Provider state management.
