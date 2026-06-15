import 'package:flutter/material.dart';


class ContactTile extends StatelessWidget {
  final Widget icon;
  final String title;
  final String value;
  final bool showChat;

  const ContactTile({
    super.key,
    required this.icon,
    required this.title,
    required this.value,
    this.showChat = false,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Container(
          width: 52,
          height: 52,
          decoration: const BoxDecoration(
            color: Color(0xFFF4F8F2),
            shape: BoxShape.circle,
          ),
          child: Center(
            child: icon,
          ),
        ),

        const SizedBox(width: 16),

        Expanded(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                title,
                style: const TextStyle(
                  fontSize: 15,
                  color: Colors.grey,
                ),
              ),
              const SizedBox(height: 4),
              Text(
                value,
                style: const TextStyle(
                  fontSize: 16,
                  decoration: TextDecoration.underline,
                  color: Color(0xFF17123B),
                  fontWeight: FontWeight.w500,
                ),
              ),
            ],
          ),
        ),

        if (showChat)
          const Icon(
            Icons.forum,
            color: Color(0xFFE5093B),
            size: 34,
          ),
      ],
    );
  }
}