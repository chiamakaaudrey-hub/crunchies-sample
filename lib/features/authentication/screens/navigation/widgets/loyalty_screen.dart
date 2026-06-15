import 'package:flutter/material.dart';

import 'loyalty_item.dart';

class LoyaltyScreen extends StatelessWidget {
  const LoyaltyScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFF7F7F7),
      body: SafeArea(
        child: SingleChildScrollView(
          padding: const EdgeInsets.symmetric(
            horizontal: 24,
            vertical: 20,
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [

              /// Loyalty Image
              Center(
                child: SizedBox(
                  height: 320,
                  child: Image.asset(
                    'assets/images/on_boarding_images/onboarding_image_2.jpg',
                    fit: BoxFit.contain,
                  ),
                ),
              ),

              const SizedBox(height: 20),

              /// Heading
              const Text(
                'Welcome to the\nCustomer Loyalty Program! 🎉',
                style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.w700,
                  color: Colors.black,
                  height: 1.3,
                ),
              ),

              const SizedBox(height: 16),

              const Text(
                'Earn rewards every time you order your favorite meals!\nHere’s how it works:', maxLines: 2,
                style: TextStyle(
                  fontSize: 12,
                  color: Colors.black,
                  height: 1.5,
                ),
              ),

              const SizedBox(height: 35),

              /// Loyalty Items
              const LoyaltyItem(
                title: 'Earn Points',
                description:
                'Get points on every order made through the app or in a physical store.',
              ),

              SizedBox(height: 28),

              LoyaltyItem(
                title: 'Unlock Rewards',
                description:
                'Redeem points for discounts, free meals, and exclusive deals.',
              ),

              SizedBox(height: 28),

              LoyaltyItem(
                title: 'Get VIP Perks',
                description:
                'Enjoy special offers, birthday treats, and priority access to new menu items.',
              ),

              const SizedBox(height: 50),

              /// Get Started Button
              SizedBox(
                width: double.infinity,
                height: 60,
                child: ElevatedButton(
                  onPressed: () {
                    // Navigate to loyalty dashboard
                  },
                  style: ElevatedButton.styleFrom(
                    backgroundColor: const Color(0xFFE5093B),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(16),
                    ),
                    elevation: 0,
                  ),
                  child: const Text(
                    'Get Started',
                    style: TextStyle(
                      fontSize: 22,
                      fontWeight: FontWeight.w600,
                      color: Colors.white,
                    ),
                  ),
                ),
              ),

              const SizedBox(height: 30),
            ],
          ),
        ),
      ),
    );
  }
}

