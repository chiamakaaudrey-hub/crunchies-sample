import 'package:flutter/material.dart';
class CategoryItem extends StatelessWidget {
  final IconData icon;
  final String title;
  final bool selected;

  const CategoryItem({
    super.key,
    required this.icon,
    required this.title,
    this.selected = false,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 90,
      margin: const EdgeInsets.only(right: 12),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(20),
        border: Border.all(
          color: selected ? Colors.red : Colors.grey.shade300,
          width: 2,
        ),
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Icon(icon, color: Colors.red),
          const SizedBox(height: 8),
          Text(title),
        ],
      ),
    );
  }
}