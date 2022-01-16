import 'package:ecommerce/models/product_list.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'product_item.dart';

class ProductGrid extends StatelessWidget {
  const ProductGrid({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    final ProductList loadedProducts = Get.put(ProductList());
    return GridView.builder(
      padding: const EdgeInsets.all(10),
      itemCount: loadedProducts.items.length,
      gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 2,
        childAspectRatio: 3 / 2,
        crossAxisSpacing: 10,
        mainAxisSpacing: 10,
      ),
      itemBuilder: (ctx, i) => (ProductItem(
        product: loadedProducts.items[i],
      )),
    );
  }
}
