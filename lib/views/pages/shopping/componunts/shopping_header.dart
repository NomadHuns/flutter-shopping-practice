import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class ShoppingCartHeader extends StatelessWidget {
  const ShoppingCartHeader({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Image.asset("assets/p1.jpeg"),
        Row(
          children: [
            Container(
              color: Colors.orange,
              width: 70,
              height: 70,
              child: Icon(CupertinoIcons.airplane),
            ),
            Container(
              color: Colors.orange,
              width: 70,
              height: 70,
              child: Icon(CupertinoIcons.car_detailed),
            ),
            Container(
              color: Colors.orange,
              width: 70,
              height: 70,
              child: Icon(Icons.motorcycle),
            ),
            Container(
              color: Colors.orange,
              width: 70,
              height: 70,
              child: Icon(Icons.directions_bike),
            ),
          ],
        )
      ],
    );
  }
}
