import 'package:crunchies/features/authentication/screens/home/home_screen.dart';
import 'package:crunchies/features/authentication/screens/navigation/navigation_menu.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:get/get_navigation/src/extension_navigation.dart';
import 'contact_tile.dart';


class SupportScreen extends StatelessWidget {
  const SupportScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: SingleChildScrollView(
          child: Padding(
            padding: EdgeInsets.symmetric(horizontal: 24),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(height: 20),

                /// Back Button
                Align(
                  alignment: AlignmentGeometry.centerLeft,
                  child: IconButton(onPressed: () {Get.offAll(() => NavigationMenu());
                    },
                      icon: Icon(Icons.arrow_back_ios_new,
                    color: Color(0xFF17123B),
                  ),
                ),
                ),
                SizedBox(height: 20),
                /// Title
                const Align(
                  alignment: Alignment.centerLeft,
                  child: Text(
                    'Support',
                    style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.w700,
                      color: Colors.black,
                    ),
                  ),
                ),

                const SizedBox(height: 16),

                const Align(
                  alignment: Alignment.centerLeft,
                  child: Text(
                    'We are here to assist you any time. Reach out to us through any of our platform below',
                    style: TextStyle(
                      fontSize: 16,
                      height: 1.5,
                      color: Colors.black,
                    ),
                  ),
                ),

                const SizedBox(height: 60),

                /// Center Chat Icon
                Container(
                  width: 150,
                  height: 150,
                  decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    border: Border.all(
                      color: Color(0xFFE5093B),
                      width: 4,
                    ),
                  ),
                  child: Center(
                    child: Container(
                      width: 110,
                      height: 110,
                      decoration: BoxDecoration(
                        color: Color(0xFFFCE8ED),
                        shape: BoxShape.circle,
                      ),
                      child: const Icon(
                        Icons.message,
                        color: Color(0xFFE5093B),
                        size: 45,
                      ),
                    ),
                  ),
                ),

                const SizedBox(height: 70),

                      ContactTile(
                        icon: FaIcon(
                          FontAwesomeIcons.squareWhatsapp,
                          color: Colors.green,
                          size: 30.0,
                        ),
                        title: 'Zee on WhatsApp',
                        value: '+234 906 243 9146',
                      ),

                      SizedBox(height: 28),

                      ContactTile(
                        icon: Icon(
                          Icons.email,
                          color: Colors.green,
                          size: 28,
                        ),
                        title: 'Email',
                        value: 'customercare@crunchiesonline.com',
                      ),

                      SizedBox(height: 28),

                      ContactTile(
                        icon: const Icon(
                          Icons.phone,
                          color: Colors.green,
                          size: 28,
                        ),
                        title: 'Phone number',
                        value: '+234 906 243 9146',
                        showChat: true,
                      ),

                      SizedBox(height: 28),

                      ContactTile(
                        icon: const Icon(
                          Icons.phone,
                          color: Colors.green,
                          size: 28,
                        ),
                        title: 'Phone number',
                        value: '+234 916 998 2493',
                        showChat: true,
                      ),

                      SizedBox(height: 40),

                /// Settings Button
                SizedBox(
                  width: double.infinity,
                  height: 58,
                  child: ElevatedButton(
                    onPressed: () {},
                    child: Text('Go to settings',
                      style: TextStyle(
                        color: Color(0xFFE5093B),
                        fontSize: 18,
                        fontWeight: FontWeight.w600,
                        )
                      ),
                      ),
                    ),

                const SizedBox(height: 30),
                  ],
                ),
        ),
        ),
          ));
  }
}


