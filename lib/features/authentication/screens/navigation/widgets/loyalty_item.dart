import 'package:flutter/material.dart';

class LoyaltyItem extends StatelessWidget {
  final String title;
  final String description;

  const LoyaltyItem({
    super.key,
    required this.title,
    required this.description,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: const EdgeInsets.only(top: 4),
          child: Container(
            height: 32,
            width: 32,
            decoration: BoxDecoration(
              color: Colors.green.shade900,
              borderRadius: BorderRadius.circular(8),
            ),
            child: const Icon(
              Icons.check,
              color: Colors.white,
              size: 20,
            ),
          ),
        ),

        const SizedBox(width: 16),

        Expanded(
          child: RichText(
            text: TextSpan(
              style: const TextStyle(
                color: Color(0xFF667085),
                fontSize: 14,
                height: 1.6,
              ),
              children: [
                TextSpan(
                  text: '$title — ',
                  style: const TextStyle(
                    color: Color(0xFF17123B),
                    fontWeight: FontWeight.w700,
                    fontSize: 18,
                  ),
                ),
                TextSpan(text: description),
              ],
            ),
          ),
        ),
      ],
    );
  }
}