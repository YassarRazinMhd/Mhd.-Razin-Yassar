import 'package:flutter/material.dart';
import 'package:flutter_provider/providers/all_product.dart';
import 'package:provider/provider.dart';

class ProductDetailScreen extends StatelessWidget {
  static const routeName = '/product-detail';

  @override
  Widget build(BuildContext context) {
    final productId = ModalRoute.of(context)?.settings.arguments as String;

    final product = Provider.of<Products>(context, listen: false)
        .allProducts
        .firstWhere((prod) => prod.id == productId);

    return Scaffold(
      appBar: AppBar(
        title: Text('Product Details'),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              width: double.infinity,
              height: 250,
              child: Image.network(
                '${product.imageUrl}',
                fit: BoxFit.cover,
              ),
            ),
            SizedBox(height: 30),
            Text(
              '${product.title}',
              style: TextStyle(fontSize: 36, fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 10),
            Text(
              '\$${product.price}', // menampilkan harga produk
              style: TextStyle(
                fontSize: 28,
                fontWeight: FontWeight.bold,
                color: Colors.green,
              ),
            ),
            SizedBox(height: 20),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16.0),
              child: Text(
                '${product.description}', // menampilkan deskripsi produk
                textAlign: TextAlign.center,
                style: TextStyle(fontSize: 18),
              ),
            ),
            SizedBox(height: 20),
            // Anda bisa menambahkan lebih banyak detail produk di sini
          ],
        ),
      ),
    );
  }
}