import 'package:ecommerce/components/product_item.dart';
import 'package:ecommerce/data/dummy_data.dart';
import 'package:ecommerce/models/product_list.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class ProductsOverViewPage extends StatelessWidget {
  final ProductList loadedProducts = Get.put(ProductList());

  ProductsOverViewPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Minha Loja'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(10.0),
        child: GridView.builder(
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
        ),
      ),
    );
  }
}
