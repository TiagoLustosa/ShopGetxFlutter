import 'package:ecommerce/components/product_grid.dart';
import 'package:flutter/material.dart';

class ProductsOverViewPage extends StatelessWidget {
  const ProductsOverViewPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text('Minha Loja'),
        ),
        body: const ProductGrid());
  }
}
