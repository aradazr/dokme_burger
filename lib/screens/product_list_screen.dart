import 'package:flutter/material.dart';

class ProductListScreen extends StatelessWidget {
  const ProductListScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      body: Container(
        height: double.infinity,
        width: double.infinity,
        color: Colors.white,
        child: Center(child: Text('لیست محصولات')),
      ),
    );
  }
}