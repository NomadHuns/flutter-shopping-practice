import 'package:flutter/material.dart';

class ShoppingCartDetail extends StatelessWidget {
  const ShoppingCartDetail({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        _detailNameAndPrice(),
        SizedBox(height: 10),
        _detailRatingAndReviewCount(),
        SizedBox(height: 20),
        _detailColorOptions(),
        SizedBox(height: 20),
        _addCartButton(),
      ],
    );
  }

  Row _detailNameAndPrice() {
    return Row(
      children: [
        Text("Urban Soft AL 10.0"),
        Spacer(),
        Text("\$699"),
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
        Text("(26)"),
      ],
    );
  }

  TextButton _addCartButton() {
    return TextButton(
      onPressed: () {},
      child: Text("Add Cart"),
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
            _detailColorOptionIcon(),
            Spacer(),
            _detailColorOptionIcon(),
            Spacer(),
            _detailColorOptionIcon(),
            Spacer(),
            _detailColorOptionIcon(),
            Spacer(),
            _detailColorOptionIcon(),
          ],
        ),
      ],
    );
  }

  Widget _detailColorOptionIcon() {
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
              color: Colors.black,
              width: 40,
              height: 40,
            ),
          ),
        )
      ],
    );
  }
}
