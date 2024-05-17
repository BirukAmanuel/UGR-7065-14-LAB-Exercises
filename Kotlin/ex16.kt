class ShoppingCart:
    def __init__(self):
        self.items = []

    def add_item(self, item_name, price, quantity=1):
        """
        Adds an item to the shopping cart.

        Parameters:
        item_name (str): The name of the item.
        price (float): The price of a single item.
        quantity (int): The quantity of the item. Default is 1.
        """
        self.items.append({"name": item_name, "price": price, "quantity": quantity})

    def remove_item(self, item_name, quantity=1):
        """
        Removes an item from the shopping cart. If the quantity to remove is more than
        the quantity in the cart, the item is completely removed from the cart.

        Parameters:
        item_name (str): The name of the item to remove.
        quantity (int): The quantity of the item to remove. Default is 1.
        """
        for item in self.items:
            if item["name"] == item_name:
                if item["quantity"] <= quantity:
                    self.items.remove(item)
                else:
                    item["quantity"] -= quantity
                break

    def calculate_total(self):
        """
        Calculates the total price of all the items in the shopping cart.

        Returns:
        float: The total price of the items.
        """
        return sum(item["price"] * item["quantity"] for item in self.items)

    def show_cart(self):
        """
        Displays the contents of the shopping cart.
        """
        if not self.items:
            print("Your shopping cart is empty.")
        else:
            for item in self.items:
                print(f"{item['quantity']} x {item['name']} @ ${item['price']:.2f} each")

# Example usage:
cart = ShoppingCart()
cart.add_item("Apple", 0.99, 3)
cart.add_item("Banana", 0.59, 2)
cart.show_cart()
print(f"Total: ${cart.calculate_total():.2f}")
cart.remove_item("Apple", 1)
cart.show_cart()
print(f"Total: ${cart.calculate_total():.2f}")
