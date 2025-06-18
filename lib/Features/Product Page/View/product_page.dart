import 'package:finalproject/Features/Home/Model/products_model.dart';
import 'package:flutter/material.dart';
import '../../../Core/Cutom_Widget/Primary_Text.dart';
import '../../../constant.dart';
import 'widgets/product_page_body.dart';

class ProductPage extends StatelessWidget {
  const ProductPage({super.key});

  static const routeName = "ProductPage";

  @override
  Widget build(BuildContext context) {
    final product = ModalRoute.of(context)!.settings.arguments as ProductsModel;
    return Scaffold(
      appBar: AppBar(
        backgroundColor: kSecondaryColor,
        title: Text(
          "Product Page",
          style: TextStyle(color: kPrimaryTextColor),
        ),
        leading: BackButton(
          color: kPrimaryTextColor,
        ),
      ),
      body: ProductPageBody(product: product,),
    );
  }
}
