void main() {
  Map<String, int> cart = {};
  addToCart(cart, 'Apple', 2);
  addToCart(cart, 'Banana', 3);
  addToCart(cart, 'Orange', 1);

  print('Initial shopping cart:');
  printCart(cart);

  double totalPrice = calculateTotalPrice(cart);
  print('\nTotal price: \$${totalPrice.toStringAsFixed(2)}');

  removeFromCart(cart, 'Apple', 1);

  print('\nUpdated shopping cart:');
  printCart(cart);
}

void addToCart(Map<String, int> cart, String itemName, int quantity) {
  cart[itemName] = (cart[itemName] ?? 0) + quantity;
}

void removeFromCart(Map<String, int> cart, String itemName, int quantity) {
  if (cart.containsKey(itemName)) {
    cart[itemName] = (cart[itemName] ?? 0) - quantity;
    if (cart[itemName]! <= 0) {
      cart.remove(itemName);
    }
  }
}

double calculateTotalPrice(Map<String, int> cart) {
  const Map<String, double> prices = {
    'Apple': 0.5,
    'Banana': 0.3,
    'Orange': 0.4,
  };

  double totalPrice = 0;
  cart.forEach((itemName, quantity) {
    if (prices.containsKey(itemName)) {
      totalPrice += prices[itemName]! * quantity;
    }
  });
  return totalPrice;
}

void printCart(Map<String, int> cart) {
  cart.forEach((itemName, quantity) {
    print('$itemName: $quantity');
  });
}
