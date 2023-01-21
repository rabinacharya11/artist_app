import 'package:artist_app/helpers/cached_image_helper.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

import '../domain/product_data.dart';

class CartScreen extends StatelessWidget {
  const CartScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("My Cart"),
        actions: [
          Center(
              child: Text(
            "Total Items: ${cartProducts.length}",
          )),
          SizedBox(
            width: 10,
          )
        ],
      ),
      body: Column(
        children: [
          ...List.generate(
            cartProducts.length,
            (index) => ListTile(
              title: Text(cartProducts[index].name),
              leading: CircleAvatar(
                backgroundImage: cachedImage(cartProducts[index].image),
              ),
              trailing: IconButton(
                onPressed: (() => {}),
                icon: const Icon(
                  Icons.remove_circle,
                ),
                color: Colors.red,
              ),
            ),
          )
        ],
      ),
    );
  }
}
