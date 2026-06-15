
import 'package:crunchies/features/authentication/screens/navigation/navigation_menu.dart';
import 'package:crunchies/features/authentication/screens/splashscreen/splash_screen.dart';
import 'package:flutter/material.dart';
import 'package:get/get_navigation/src/root/get_material_app.dart';
import 'package:google_fonts/google_fonts.dart';


void main() {
  runApp(CrunchiesApp());
}

class CrunchiesApp extends StatelessWidget {
  const CrunchiesApp({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Crunchies',
      theme: ThemeData(useMaterial3: true, scaffoldBackgroundColor: const Color(0xffF8F8F8), textTheme: GoogleFonts.poppinsTextTheme(),
      ),
      home: const NavigationMenu(),
    );
  }
}