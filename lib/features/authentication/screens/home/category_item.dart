import 'package:flutter/material.dart';

class CategoryItem extends StatelessWidget {
  final String image;
  final String title;
  final bool selected;

  const CategoryItem({
    super.key,
    required this.image,
    required this.title,
    this.selected = false,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 80,
      margin: const EdgeInsets.only(right: 12),
      child: Column(
        children: [
          Container(
            width: 70,
            height: 70,
            decoration: BoxDecoration(
              shape: BoxShape.circle,
              color: Colors.white,
              border: Border.all(
                color: selected ? Colors.red : Colors.grey.shade300,
                width: 2,
              ),
            ),
            child: Padding(
              padding: const EdgeInsets.all(4),
              child: Image.asset(
                image,
                fit: BoxFit.contain,
                filterQuality: FilterQuality.high,
              ),
            ),
          ),

          const SizedBox(height: 8),

          Text(
            title,
            textAlign: TextAlign.center,
            style: const TextStyle(
              fontSize: 14,
              fontWeight: FontWeight.w600,
            ),
          ),
        ],
      ),
    );
  }
}