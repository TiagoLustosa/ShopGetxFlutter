import 'package:ecommerce/pages/product_detail_page.dart';
import 'package:ecommerce/pages/products_overview_page.dart';
import 'package:ecommerce/utils/app_routes.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        colorScheme: const ColorScheme.light(
          primary: Colors.blueGrey,
          secondary: Colors.deepOrange,
        ),
        fontFamily: 'Lato',
      ),
      home: ProductsOverViewPage(),
      getPages: [
        GetPage(
            name: AppRoutes.productDetail,
            page: () => const ProductDetailPage())
      ],
    );
  }
}
