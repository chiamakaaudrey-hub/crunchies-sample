import 'package:flutter/material.dart';

class LoyaltyScreen extends StatelessWidget {
  const LoyaltyScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey.shade50,

      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        title: const Text(
          'Loyalty Rewards',
          style: TextStyle(
            color: Color(0xff15133C),
            fontSize: 24,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),

      body: SingleChildScrollView(
        padding: const EdgeInsets.all(20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [

            /// POINTS CARD
            Container(
              width: double.infinity,
              padding: const EdgeInsets.all(24),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(24),
                gradient: const LinearGradient(
                  colors: [
                    Color(0xffF4003D),
                    Color(0xffFF6B6B),
                  ],
                ),
              ),
              child: const Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Available Points',
                    style: TextStyle(
                      color: Colors.white70,
                      fontSize: 16,
                    ),
                  ),

                  SizedBox(height: 8),

                  Text(
                    '2,450',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 42,
                      fontWeight: FontWeight.bold,
                    ),
                  ),

                  SizedBox(height: 12),

                  Text(
                    'Gold Member',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 18,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                ],
              ),
            ),

            const SizedBox(height: 30),

            /// NEXT REWARD
            const Text(
              'Next Reward',
              style: TextStyle(
                fontSize: 22,
                fontWeight: FontWeight.bold,
                color: Color(0xff15133C),
              ),
            ),

            const SizedBox(height: 12),

            Container(
              padding: const EdgeInsets.all(18),
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(18),
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Text(
                    'Free Family Meal',
                    style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.bold,
                    ),
                  ),

                  const SizedBox(height: 8),

                  Text(
                    '550 points remaining',
                    style: TextStyle(
                      color: Colors.grey.shade600,
                    ),
                  ),

                  const SizedBox(height: 12),

                  ClipRRect(
                    borderRadius: BorderRadius.circular(10),
                    child: LinearProgressIndicator(
                      value: 0.82,
                      minHeight: 10,
                      backgroundColor: Colors.grey.shade200,
                      color: const Color(0xffF4003D),
                    ),
                  ),
                ],
              ),
            ),

            const SizedBox(height: 30),

            /// REWARDS
            const Text(
              'Available Rewards',
              style: TextStyle(
                fontSize: 22,
                fontWeight: FontWeight.bold,
                color: Color(0xff15133C),
              ),
            ),

            const SizedBox(height: 16),

            _rewardCard(
              icon: Icons.local_drink,
              title: 'Free Soft Drink',
              points: '500 pts',
            ),

            const SizedBox(height: 12),

            _rewardCard(
              icon: Icons.fastfood,
              title: 'Free Burger',
              points: '1,500 pts',
            ),

            const SizedBox(height: 12),

            _rewardCard(
              icon: Icons.restaurant,
              title: 'Family Combo',
              points: '3,000 pts',
            ),

            const SizedBox(height: 30),

            /// HISTORY
            const Text(
              'Recent Activity',
              style: TextStyle(
                fontSize: 22,
                fontWeight: FontWeight.bold,
                color: Color(0xff15133C),
              ),
            ),

            const SizedBox(height: 16),

            _historyTile(
              'Points Earned',
              '+250',
              'Order #CR1024',
            ),

            _historyTile(
              'Points Redeemed',
              '-500',
              'Free Soft Drink',
            ),

            _historyTile(
              'Points Earned',
              '+120',
              'Order #CR1022',
            ),
          ],
        ),
      ),
    );
  }

  static Widget _rewardCard({
    required IconData icon,
    required String title,
    required String points,
  }) {
    return Container(
      padding: const EdgeInsets.all(18),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(18),
      ),
      child: Row(
        children: [
          CircleAvatar(
            radius: 25,
            backgroundColor: Colors.red.shade50,
            child: Icon(
              icon,
              color: Colors.red,
            ),
          ),

          const SizedBox(width: 16),

          Expanded(
            child: Text(
              title,
              style: const TextStyle(
                fontWeight: FontWeight.w600,
                fontSize: 16,
              ),
            ),
          ),

          Text(
            points,
            style: const TextStyle(
              color: Color(0xffF4003D),
              fontWeight: FontWeight.bold,
            ),
          ),
        ],
      ),
    );
  }

  static Widget _historyTile(
      String title,
      String points,
      String subtitle,
      ) {
    return ListTile(
      contentPadding: EdgeInsets.zero,
      leading: CircleAvatar(
        backgroundColor: Colors.red.shade50,
        child: const Icon(
          Icons.stars,
          color: Colors.red,
        ),
      ),
      title: Text(title),
      subtitle: Text(subtitle),
      trailing: Text(
        points,
        style: const TextStyle(
          color: Color(0xffF4003D),
          fontWeight: FontWeight.bold,
        ),
      ),
    );
  }
}