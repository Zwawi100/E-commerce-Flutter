import 'package:cached_network_image/cached_network_image.dart';
import 'package:finalproject/Core/Cutom_Widget/Custom_ElevatedButton.dart';
import 'package:finalproject/Features/Home/Model/products_model.dart';
import 'package:finalproject/Features/Home/View/Widgets/show_welcome.dart';
import 'package:flutter/material.dart';

class ProductPageBody extends StatelessWidget {
  const ProductPageBody({super.key, required this.product});
  final ProductsModel product;
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.only(
        top: 16,
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          ShowWelcome(),
          Padding(
            padding: const EdgeInsets.only(),
            child: SizedBox(
              height: 380,
              child: CachedNetworkImage(
                imageUrl: product.image,
                placeholder: (context, url) => CircularProgressIndicator(),
                errorWidget: (context, url, error) =>
                    Icon(Icons.image_not_supported),
              ),
            ),
          ),
          SizedBox(
            height: 16,
          ),
          CustomElevatedButton(text: "Add To Card", onpressed: () {}),
          SizedBox(
            height: 16,
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text("Price : ${product.price}"),
                Text("Discound : ${product.discount}" "%"),
                Text("Name : ${product.name}"),
                Text("Discord : ${product.description}"),
              ],
            ),
          ),
          
        ],
      ),
    );
  }
}
