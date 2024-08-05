import 'package:flutter/material.dart';

class ProductDetailScreen extends StatelessWidget {
  static const routeName = '/product-detail';

  @override
  Widget build(BuildContext context) {
    // Menggunakan null-aware operator untuk menghindari error
    final productId = ModalRoute.of(context)?.settings.arguments as String?;
    
    if (productId == null) {
      return Scaffold(
        appBar: AppBar(
          title: Text('Product Details'),
        ),
        body: Center(
          child: Text("Product ID not found."),
        ),
      );
    }

    return Scaffold(
      appBar: AppBar(
        title: Text('Product Details'),
      ),
      body: Center(
        child: Text("INI ADALAH PAGE PRODUK ($productId)"),
      ),
    );
  }
}
