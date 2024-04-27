import 'package:flutter/material.dart';

class ProductSingleScreen extends StatelessWidget {
  const ProductSingleScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      body: Container(
        height: double.infinity,
        width: double.infinity,
        color: Colors.white,
        child: Center(child: Text('جزییات محصول')),
      ),
    );
  }
}