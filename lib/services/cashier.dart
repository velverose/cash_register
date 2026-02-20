// lib/services/cashier.dart
import '../models/product.dart';

class Cashier {
  static const double vatRate = 0.12;

  double calculateTotal(List<Product> products) {
    double sum = 0;
    for (var p in products) {
      sum += p.total;
    }
    return sum;
  }

  double calculateVat(double total) => total * vatRate;

  double calculateFinal(double total) => total * (1 + vatRate);
}