import 'package:cached_network_image/cached_network_image.dart';
import 'package:finalproject/Features/Home/Model/products_model.dart';
import 'package:flutter/material.dart';

class CustomStack extends StatelessWidget {
  CustomStack({super.key, required this.product});

  ProductsModel product;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        // Navigator.pushNamed(context, ProductPage.id,arguments: product);
      },
      child: Stack(
          clipBehavior: Clip.none,
          alignment: Alignment.topLeft,
          children: [
            Container(
              child: Card(
                color: Colors.white,
                elevation: 5,
                child: Padding(
                  padding: const EdgeInsets.all(10),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.end,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        product.name.substring(0, 10),
                        style: TextStyle(fontSize: 16),
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(r"$" + "${product.price.toString()}"),
                          Icon(
                            Icons.favorite,
                            color: Colors.red,
                          )
                        ],
                      )
                    ],
                  ),
                ),
              ),
            ),
            Positioned(
              top: 10,
                left: 65,
                child: CachedNetworkImage(
                  imageUrl: product.image,
                  height: 115,
                  width: 100,
                  placeholder: (context, url) => CircularProgressIndicator(),
                  errorWidget: (context, url, error) =>
                      Icon(Icons.image_not_supported),
                ))
          ]),
    );
  }
}
