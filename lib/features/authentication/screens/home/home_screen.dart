import 'package:flutter/material.dart';
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
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: 'Home',
          ),
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
                      children: const [
                        Text(
                          'Good morning, Chiamaka.',
                          style: TextStyle(
                            fontSize: 26,
                            fontWeight: FontWeight.bold,
                            color: Color(0xff15133C),
                          ),
                        ),
                        SizedBox(height: 4),
                        Text(
                          "It's time for breakfast - Taste the difference!",
                          style: TextStyle(
                            color: Colors.grey,
                            fontSize: 16,
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),

              const SizedBox(height: 24),

              /// LOCATION CARD
              Container(
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
                          Text(
                            'Ordering from:',
                            style: TextStyle(
                              color: Colors.grey,
                            ),
                          ),
                          SizedBox(height: 4),
                          Text(
                            'Crunchies Fried Chicken',
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 17,
                            ),
                          ),
                        ],
                      ),
                    ),

                    const Icon(Icons.arrow_forward_ios),
                  ],
                ),
              ),

              const SizedBox(height: 24),

        /// BANNER
        SizedBox(
          height: 180,
          child: ListView(
            scrollDirection: Axis.horizontal,
            children: [
              ClipRRect(
                borderRadius: BorderRadius.circular(25),
                child: Image.asset(
                  'assets/images/banners/banner_1.jpg',
                  width: 320,
                  fit: BoxFit.cover,
                ),
              ),

              const SizedBox(width: 12),

              ClipRRect(
                borderRadius: BorderRadius.circular(25),
                child: Image.asset(
                  'assets/images/banners/banner_2.jpg',
                  width: 320,
                  fit: BoxFit.cover,
                ),
              ),

              const SizedBox(width: 12),

              ClipRRect(
                borderRadius: BorderRadius.circular(25),
                child: Image.asset(
                  'assets/images/banners/banner_3.jpg',
                  width: 320,
                  fit: BoxFit.cover,
                ),
              ),

              const SizedBox(width: 12),

              ClipRRect(
                borderRadius: BorderRadius.circular(25),
                child: Image.asset(
                  'assets/images/banners/banner_4.jpg',
                  width: 320,
                  fit: BoxFit.cover,
                ),
              ),
              const SizedBox(width: 12),

              ClipRRect(
                borderRadius: BorderRadius.circular(25),
                child: Image.asset(
                  'assets/images/banners/banner_5.jpg',
                  width: 320,
                  fit: BoxFit.cover,
                ),
              ),
              const SizedBox(width: 12),

              ClipRRect(
                borderRadius: BorderRadius.circular(25),
                child: Image.asset(
                  'assets/images/banners/banner_6.jpg',
                  width: 320,
                  fit: BoxFit.cover,
                ),
              ),
              const SizedBox(width: 12),

              ClipRRect(
                borderRadius: BorderRadius.circular(25),
                child: Image.asset(
                  'assets/images/banners/banner_7.jpg',
                  width: 320,
                  fit: BoxFit.cover,
                ),
              ),
            ],
          ),
        ),

        const SizedBox(height: 30),

              const SizedBox(height: 30),

              /// TITLE + SEARCH
              Row(
                children: [
                  const Expanded(
                    child: Text(
                      'How may we delight you today?',
                      style: TextStyle(
                        fontSize: 34,
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
                    child: const Icon(
                      Icons.search,
                      color: Colors.red,
                    ),
                  ),
                ],
              ),

              const SizedBox(height: 30),

              const Text(
                'Categories',
                style: TextStyle(
                  fontSize: 26,
                  fontWeight: FontWeight.w600,
                ),
              ),

              const SizedBox(height: 16),

              /// CATEGORIES
              SizedBox(
                height: 100,
                child: ListView(
                  scrollDirection: Axis.horizontal,
                  children: const [
                    CategoryItem(
                      icon: Icons.fastfood,
                      title: 'All',
                      selected: true,
                    ),
                    CategoryItem(
                      icon: Icons.rice_bowl,
                      title: 'Food',
                    ),
                    CategoryItem(
                      icon: Icons.egg,
                      title: 'Protein',
                    ),
                    CategoryItem(
                      icon: Icons.donut_small,
                      title: 'Pastry',
                    ),
                    CategoryItem(
                      icon: Icons.cake,
                      title: 'Cake',
                    ),
                  ],
                ),
              ),

              const SizedBox(height: 30),

              const Text(
                'FOOD',
                style: TextStyle(
                  fontSize: 28,
                  fontWeight: FontWeight.bold,
                ),
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
        ),
      ));
  }
}



