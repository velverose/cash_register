// lib/models/product.dart
class Product {
  String name;
  double price;
  int quantity;
  

  Product(this.name, this.price, this.quantity);

  double get total => price * quantity;
}