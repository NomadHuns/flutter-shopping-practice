import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_shoppingcart/core/constants.dart';

class ShoppingCartHeader extends StatefulWidget {
  const ShoppingCartHeader({Key? key}) : super(key: key);

  @override
  State<ShoppingCartHeader> createState() => _ShoppingCartHeaderState();
}

class _ShoppingCartHeaderState extends State<ShoppingCartHeader> {
  int selectedId = 0;
  List<String> selectedPic = [
    "assets/p1.jpeg",
    "assets/p2.jpeg",
    "assets/p3.jpeg",
    "assets/p4.jpeg",
  ];

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Image.asset(selectedPic[selectedId], height: 250, fit: BoxFit.cover),
        SizedBox(height: 20),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20),
          child: Row(
            children: [
              _headerButton(Icon(Icons.directions_bike), 0),
              Spacer(),
              _headerButton(Icon(Icons.motorcycle), 1),
              Spacer(),
              _headerButton(Icon(CupertinoIcons.car_detailed), 2),
              Spacer(),
              _headerButton(Icon(CupertinoIcons.airplane), 3),
            ],
          ),
        ),
        SizedBox(height: 20),
      ],
    );
  }

  Widget _headerButton(Icon icon, int id) {
    return InkWell(
      onTap: () {
        setState(() {
          selectedId = id;
        });
      },
      child: Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10),
          color: id == selectedId ? kAccentColor : kSecondaryColor,
        ),
        width: 70,
        height: 70,
        child: icon,
      ),
    );
  }
}
