import 'package:flutter/material.dart';
import 'package:flutter_shoppingcart/views/pages/shopping/shopping_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: ShoppingPage(),
      theme: ThemeData(
        textButtonTheme: TextButtonThemeData(
          style: TextButton.styleFrom(
            backgroundColor: Color(0xFFff7643),
            minimumSize: Size(300, 50),
            shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20))
          )
        )
      ),
    );
  }
}


