import 'package:crunchies/features/authentication/screens/navigation/widgets/cart_screen.dart';
import 'package:crunchies/features/authentication/screens/navigation/widgets/loyalty_screen.dart';
import 'package:crunchies/features/authentication/screens/navigation/widgets/offers_screen.dart';
import 'package:crunchies/features/authentication/screens/navigation/widgets/support_screen.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../../controllers/navigation_controller.dart';
import '../home/home_screen.dart';


class NavigationMenu extends StatelessWidget {
  const NavigationMenu({super.key});

  @override
  Widget build(BuildContext context) {
    final controller = Get.put(NavigationController());

    final screens = [HomeScreen(), OffersScreen(), CartScreen(), LoyaltyScreen(), SupportScreen()];

    return Scaffold(
      body: Obx(() => screens[controller.selectedIndex.value],
      ),

      bottomNavigationBar: Obx(() => BottomNavigationBar(
          currentIndex: controller.selectedIndex.value,
          type: BottomNavigationBarType.fixed,
          selectedItemColor: const Color(0xffF4003D),
          unselectedItemColor: Colors.grey,

          onTap: controller.changeIndex,

          items: const [
            BottomNavigationBarItem(
              icon: Icon(Icons.cottage_outlined),
              activeIcon: Icon(Icons.cottage),
              label: 'Home',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.percent_rounded),
              label: 'Offers',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.shopping_cart_outlined),
              activeIcon: Icon(Icons.shopping_cart),
              label: 'Cart',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.card_giftcard_outlined),
              activeIcon: Icon(Icons.card_giftcard),
              label: 'Loyalty',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.chat_bubble_outline),
              activeIcon: Icon(Icons.chat_bubble),
              label: 'Support',
            ),
          ],
        ),
      ),
    );
  }
}