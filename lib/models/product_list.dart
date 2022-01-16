import 'package:ecommerce/data/dummy_data.dart';
import 'package:get/get.dart';

import 'product.dart';

class ProductList extends GetxController {
  final List<Product> _items = dummyProducts.obs;

  List<Product> get items => [..._items];

  void addProduct(Product product) {
    _items.add(product);
  }
}
