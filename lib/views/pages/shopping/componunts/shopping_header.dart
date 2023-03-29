import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class ShoppingCartHeader extends StatelessWidget {
  const ShoppingCartHeader({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Image.asset("assets/p1.jpeg"),
        SizedBox(height: 20),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20),
          child: Row(
            children: [
              _headerButton(Icon(Icons.directions_bike), Color(0xFFff7643)),
              Spacer(),
              _headerButton(Icon(Icons.motorcycle), Color(0xFFc6c6c6)),
              Spacer(),
              _headerButton(
                  Icon(CupertinoIcons.car_detailed), Color(0xFFc6c6c6)),
              Spacer(),
              _headerButton(Icon(CupertinoIcons.airplane), Color(0xFFc6c6c6)),
            ],
          ),
        ),
        SizedBox(height: 20),
      ],
    );
  }

  Container _headerButton(Icon icon, Color color) {
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
        color: color,
      ),
      width: 70,
      height: 70,
      child: icon,
    );
  }
}
