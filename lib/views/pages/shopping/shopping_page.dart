import 'package:flutter/material.dart';

import 'componunts/shopping_detail.dart';
import 'componunts/shopping_header.dart';

class ShoppingPage extends StatelessWidget {
  const ShoppingPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: _appBar(),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: [
            ShoppingCartHeader(),
            ShoppingCartDetail(),
          ],
        ),
      ),
    );
  }

  AppBar _appBar() {
    return AppBar(
      backgroundColor: Colors.white,
      leading: IconButton(
        onPressed: () {},
        icon: Icon(Icons.arrow_back, color: Colors.black),
      ),
      actions: [
        IconButton(
          onPressed: () {},
          icon: Icon(Icons.shopping_cart, color: Colors.black),
        ),
      ],
    );
  }
}
