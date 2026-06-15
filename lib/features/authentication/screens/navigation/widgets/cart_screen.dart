import 'package:flutter/material.dart';

class CartScreen extends StatelessWidget {
  const CartScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey.shade50,

      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        title: const Text(
          'My Cart',
          style: TextStyle(
            color: Color(0xff15133C),
            fontWeight: FontWeight.bold,
            fontSize: 24,
          ),
        ),
      ),

      body: Column(
        children: [
          /// CART ITEMS
          Expanded(
            child: ListView(
              padding: const EdgeInsets.all(20),
              children: const [
                CartItemCard(
                  image: 'assets/images/food/ofada_rice.png',
                  title: 'Ofada Rice (Wrapped)',
                  price: 4500,
                  quantity: 1,
                ),
                SizedBox(height: 16),
                CartItemCard(
                  image: 'assets/images/food/macaroni.jpg',
                  title: 'Macaroni & Meatballs',
                  price: 5500,
                  quantity: 2,
                ),
                SizedBox(height: 16),
                CartItemCard(
                  image: 'assets/images/food/yamarita.png',
                  title: 'Yamarita',
                  price: 3000,
                  quantity: 1,
                ),
              ],
            ),
          ),

          /// ORDER SUMMARY
          Container(
            padding: const EdgeInsets.all(20),
            decoration: const BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.vertical(
                top: Radius.circular(30),
              ),
            ),
            child: Column(
              children: [
                _summaryRow('Subtotal', '₦18,500'),
                const SizedBox(height: 12),

                _summaryRow('Delivery Fee', '₦1,500'),
                const SizedBox(height: 12),

                const Divider(),

                _summaryRow(
                  'Total',
                  '₦20,000',
                  isBold: true,
                ),

                const SizedBox(height: 24),

                SizedBox(
                  width: double.infinity,
                  height: 60,
                  child: ElevatedButton(
                    onPressed: () {},
                    style: ElevatedButton.styleFrom(
                      backgroundColor: const Color(0xffF4003D),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(16),
                      ),
                    ),
                    child: const Text(
                      'Proceed to Checkout',
                      style: TextStyle(
                        fontSize: 18,
                        color: Colors.white,
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }

  static Widget _summaryRow(
      String title,
      String value, {
        bool isBold = false,
      }) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          title,
          style: TextStyle(
            fontSize: 16,
            fontWeight:
            isBold ? FontWeight.bold : FontWeight.w500,
          ),
        ),
        Text(
          value,
          style: TextStyle(
            fontSize: 16,
            fontWeight:
            isBold ? FontWeight.bold : FontWeight.w500,
          ),
        ),
      ],
    );
  }
}

class CartItemCard extends StatelessWidget {
  final String image;
  final String title;
  final int price;
  final int quantity;

  const CartItemCard({
    super.key,
    required this.image,
    required this.title,
    required this.price,
    required this.quantity,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(14),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(20),
      ),
      child: Row(
        children: [
          ClipRRect(
            borderRadius: BorderRadius.circular(14),
            child: Image.asset(
              image,
              width: 90,
              height: 90,
              fit: BoxFit.cover,
            ),
          ),

          const SizedBox(width: 14),

          Expanded(
            child: Column(
              crossAxisAlignment:
              CrossAxisAlignment.start,
              children: [
                Text(
                  title,
                  style: const TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 16,
                  ),
                ),

                const SizedBox(height: 8),

                Text(
                  '₦$price',
                  style: const TextStyle(
                    color: Color(0xffF4003D),
                    fontWeight: FontWeight.bold,
                    fontSize: 16,
                  ),
                ),

                const SizedBox(height: 12),

                Row(
                  children: [
                    _quantityButton(Icons.remove),

                    Padding(
                      padding: const EdgeInsets.symmetric(
                        horizontal: 12,
                      ),
                      child: Text(
                        '$quantity',
                        style: const TextStyle(
                          fontSize: 16,
                        ),
                      ),
                    ),

                    _quantityButton(Icons.add),
                  ],
                ),
              ],
            ),
          ),

          IconButton(
            onPressed: () {},
            icon: const Icon(
              Icons.delete_outline,
              color: Colors.red,
            ),
          ),
        ],
      ),
    );
  }

  Widget _quantityButton(IconData icon) {
    return Container(
      width: 30,
      height: 30,
      decoration: BoxDecoration(
        color: Colors.red.shade50,
        borderRadius: BorderRadius.circular(8),
      ),
      child: Icon(
        icon,
        size: 18,
        color: Colors.red,
      ),
    );
  }
}