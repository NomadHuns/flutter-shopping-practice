import 'package:flutter/material.dart';

class ShoppingCartDetail extends StatelessWidget {
  const ShoppingCartDetail({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.only(left: 16, right: 16, bottom: 40),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(40),
      ),
      child: Column(
        children: [
          SizedBox(height: 20),
          _detailNameAndPrice(),
          SizedBox(height: 10),
          _detailRatingAndReviewCount(),
          SizedBox(height: 20),
          _detailColorOptions(),
          SizedBox(height: 20),
          _addCartButton(),
        ],
      ),
    );
  }

  Row _detailNameAndPrice() {
    return Row(
      children: [
        Text(
          "Urban Soft AL 10.0",
          style: TextStyle(
            fontSize: 18,
            fontWeight: FontWeight.bold,
          ),
        ),
        Spacer(),
        Text(
          "\$699",
          style: TextStyle(
            fontSize: 18,
            fontWeight: FontWeight.bold,
          ),
        ),
      ],
    );
  }

  Row _detailRatingAndReviewCount() {
    return Row(
      children: [
        Icon(
          Icons.star,
          color: Colors.yellow,
        ),
        Icon(
          Icons.star,
          color: Colors.yellow,
        ),
        Icon(
          Icons.star,
          color: Colors.yellow,
        ),
        Icon(
          Icons.star,
          color: Colors.yellow,
        ),
        Icon(
          Icons.star,
          color: Colors.yellow,
        ),
        Spacer(),
        Text("review"),
        Text("(26)", style: TextStyle(color: Colors.blue)),
      ],
    );
  }

  TextButton _addCartButton() {
    return TextButton(
      onPressed: () {},
      child: Text(
        "Add Cart",
        style: TextStyle(color: Colors.white),
      ),
    );
  }

  Column _detailColorOptions() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text("Color Options"),
        SizedBox(height: 10),
        Row(
          children: [
            _detailColorOptionIcon(Colors.black),
            Spacer(),
            _detailColorOptionIcon(Colors.yellow),
            Spacer(),
            _detailColorOptionIcon(Colors.pink),
            Spacer(),
            _detailColorOptionIcon(Colors.deepPurple),
            Spacer(),
            _detailColorOptionIcon(Colors.lightBlueAccent),
          ],
        ),
      ],
    );
  }

  Widget _detailColorOptionIcon(Color color) {
    return Stack(
      children: [
        Container(
          width: 50,
          height: 50,
          decoration: BoxDecoration(
            color: Colors.white,
            border: Border.all(),
            shape: BoxShape.circle,
          ),
        ),
        Positioned(
          left: 5,
          top: 5,
          child: ClipOval(
            child: Container(
              color: color,
              width: 40,
              height: 40,
            ),
          ),
        )
      ],
    );
  }
}
