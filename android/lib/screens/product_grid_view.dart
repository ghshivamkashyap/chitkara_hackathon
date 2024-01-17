import 'package:flutter/material.dart';

class ProductGridView extends StatelessWidget {
  final List<Map<String, dynamic>> products;

  const ProductGridView({Key? key, required this.products}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GridView.builder(
      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 2,
        crossAxisSpacing: 8.0,
        mainAxisSpacing: 8.0,
      ),
      itemCount: products.length,
      padding: EdgeInsets.all(8.0), // Add padding to prevent overflow
      itemBuilder: (context, index) {
        final product = products[index];
        return ProductCard(
          image: product['image'],
          name: product['name'],
          mrp: product['mrp'],
          currPrice: product['currprice'],
        );
      },
    );
  }
}

class ProductCard extends StatelessWidget {
  final String image;
  final String name;
  final int mrp;
  final int currPrice;

  const ProductCard({
    Key? key,
    required this.image,
    required this.name,
    required this.mrp,
    required this.currPrice,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 2.0,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            height: 200.0, // Adjust the height as needed
            child: Image.network(
              image,
              fit: BoxFit.cover,
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  name,
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                  ),
                ),
                SizedBox(height: 4.0),
                Row(
                  children: [
                    Text(
                      '₹$mrp',
                      style: TextStyle(
                        color: Colors.grey,
                        decoration: TextDecoration.lineThrough,
                      ),
                    ),
                    SizedBox(width: 8.0),
                    Text(
                      '₹$currPrice',
                      style: TextStyle(
                        color: Colors.green,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
