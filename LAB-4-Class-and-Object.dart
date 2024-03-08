class Product {
  String name;
  double price;
  int quantity;

  Product(this.name, this.price, this.quantity);

  double calculateTotalCost() {
    return price * quantity;
  }
}

void main() {

  Product product = Product("Widget", 10.0, 3);

  print("Product:");
  print("Name: ${product.name}");
  print("Price: \$${product.price}");
  print("Quantity: ${product.quantity}");
  print("Total Cost: \$${product.calculateTotalCost()}");
}