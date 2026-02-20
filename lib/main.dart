import 'models/product.dart';
import 'services/cashier.dart';
import 'dart:io';

void main() {
  List<Product> products = [];
  final cashier = Cashier();

  print('Введите количество товаров:');
  int count = int.parse(stdin.readLineSync()!);

  for (int i = 0; i < count; i++) {
    print('\nТовар ${i + 1}');

    stdout.write('Название: ');
    String name = stdin.readLineSync()!;

    stdout.write('Цена: ');
    double price = double.parse(stdin.readLineSync()!);

    stdout.write('Количество: ');
    int quantity = int.parse(stdin.readLineSync()!);

    products.add(Product(name, price, quantity));
  }

  double total = cashier.calculateTotal(products);
  double vat = cashier.calculateVat(total);
  double finalSum = cashier.calculateFinal(total);

  print('\n====== ЧЕК ======');
  for (var p in products) {
    print('${p.name} | ${p.price} тг x ${p.quantity} = ${p.total} тг');
  }

  print('-----------------');
  print('Сумма: ${total.toStringAsFixed(2)} тг');
  print('В том числе НДС (12%): ${vat.toStringAsFixed(2)} тг');
  print('ИТОГО К ОПЛАТЕ: ${finalSum.toStringAsFixed(2)} тг');
}