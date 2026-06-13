import 'package:crunchies/features/authentication/screens/home/a_banner.dart';
import 'package:crunchies/features/authentication/screens/login/widgets/location_screen.dart';
import 'package:flutter/material.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:get/get_navigation/src/extension_navigation.dart';
import 'category_item.dart';
import 'food_card.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,

      bottomNavigationBar: BottomNavigationBar(
        currentIndex: 0,
        type: BottomNavigationBarType.fixed,
        selectedItemColor: Colors.red,
        unselectedItemColor: Colors.grey,
        items: const [
          BottomNavigationBarItem(icon: Icon(Icons.home), label: 'Home'),
          BottomNavigationBarItem(
            icon: Icon(Icons.local_offer_outlined),
            label: 'Offers',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.shopping_cart),
            label: 'Cart',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.card_giftcard),
            label: 'Loyalty',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.support_agent),
            label: 'Support',
          ),
        ],
      ),

      body: SafeArea(
        child: SingleChildScrollView(
          padding: const EdgeInsets.all(20),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              /// HEADER
              Row(
                children: [
                  const CircleAvatar(
                    radius: 30,
                    backgroundImage: AssetImage(
                      'assets/logos/crunchies_logo.png',
                    ),
                  ),

                  const SizedBox(width: 16),

                  Expanded(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text('Good morning, Chiamaka.', style: TextStyle(fontSize: 15, fontWeight: FontWeight.bold, color: Color(0xff15133C))),
                        SizedBox(height: 4),
                        Text("It's time for breakfast - Taste the difference!", style: TextStyle(color: Colors.grey, fontSize: 12), maxLines: 1),
                      ],
                    ),
                  ),
                ],
              ),

              const SizedBox(height: 24),

              /// LOCATION CARD
        InkWell(
          borderRadius: BorderRadius.circular(20),
          onTap: () => Get.to(() => const LocationScreen()),
          child: Container(
            padding: const EdgeInsets.all(16),
            decoration: BoxDecoration(
              color: Colors.red.shade50,
              borderRadius: BorderRadius.circular(20),
            ),
            child: Row(
              children: [
                CircleAvatar(
                  backgroundColor: Colors.red.shade100,
                  child: const Icon(
                    Icons.store,
                    color: Colors.red,
                  ),
                ),

                const SizedBox(width: 16),

                const Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text('Ordering from:', style: TextStyle(color: Colors.grey)),
                      SizedBox(height: 4),
                      Text('Crunchies Fried Chicken, 262 Agbani Road, Enugu', maxLines: 1, overflow: TextOverflow.ellipsis, style: TextStyle(fontWeight: FontWeight.w400, fontSize: 15)),
                    ],
                  ),
                ),
                const Icon(
                  Icons.arrow_forward_outlined,
                  color: Colors.black,
                ),
              ],
            ),
          ),
        ),
      const SizedBox(height: 24),

              /// BANNER
              ABanner(),

              const SizedBox(height: 30),

              /// TITLE + SEARCH
              Row(
                children: [
                  const Expanded(
                    child: Text(
                      'How may we delight you today?',
                      style: TextStyle(
                        fontSize: 26,
                        fontWeight: FontWeight.bold,
                        color: Color(0xff15133C),
                      ),
                    ),
                  ),

                  Container(
                    width: 60,
                    height: 60,
                    decoration: BoxDecoration(
                      color: Colors.red.shade50,
                      shape: BoxShape.circle,
                    ),
                    child: Icon(Icons.search_outlined, color: Colors.red, size: 55),
                  ),
                ],
              ),

              const SizedBox(height: 30),

              /// CATEGORIES
              const Text('Categories', style: TextStyle(fontSize: 26, fontWeight: FontWeight.w600)),
              const SizedBox(height: 16),
              SizedBox(
                height: 100,
                child: ListView(scrollDirection: Axis.horizontal,
                children:[
                    CategoryItem(image: "assets/images/categories/all.png", title: 'All'),
                    CategoryItem(image: "assets/images/categories/food.png", title: 'Food'),
                    CategoryItem(image: "assets/images/categories/protein.png", title: 'Protein'),
                    CategoryItem(image: "assets/images/categories/pastry.png", title: 'Pastry'),
                    CategoryItem(image: "assets/images/categories/cake.png", title: 'Cake'),
                  ],
                ),
              ),

              const SizedBox(height: 30),

              const Text(
                'FOOD',
                style: TextStyle(fontSize: 28, fontWeight: FontWeight.bold),
              ),

              const SizedBox(height: 20),

              /// FOOD GRID
              GridView.count(
                shrinkWrap: true,
                physics: const NeverScrollableScrollPhysics(),
                crossAxisCount: 2,
                crossAxisSpacing: 15,
                mainAxisSpacing: 15,
                childAspectRatio: .8,
                children: const [
                  FoodCard(
                    image: 'assets/images/food/ofada_rice.png',
                    title: 'Ofada Rice (wrapped)',
                  ),
                  FoodCard(
                    image: 'assets/images/food/macaroni.jpg',
                    title: 'Macaroni & Meatballs',
                  ),
                  FoodCard(
                    image: 'assets/images/food/yamarita.png',
                    title: 'Yamarita',
                  ),
                  FoodCard(
                    image: 'assets/images/food/fried plantain.png',
                    title: 'Fried Plantain',
                  ),
                  FoodCard(
                    image: 'assets/images/food/moimoi.png',
                    title: 'Moi Moi',
                  ),
                ],
              ),
      ]),
    )));
  }
}
