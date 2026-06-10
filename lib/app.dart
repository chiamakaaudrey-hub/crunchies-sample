import 'package:crunchies/features/authentication/screens/onboarding/onboarding.dart';
import 'package:crunchies/utilities/constants/colors.dart';
import 'package:flutter/material.dart';
import 'package:get/get_navigation/src/root/get_material_app.dart';

/// -- Use this Class to set up themes, initial Bindings, any animations and much more using Material Widget
class App extends StatelessWidget {
  const App({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      themeMode: ThemeMode.light,
    //   theme: TAppTheme.lightTheme,
    //   darkTheme: TAppTheme.darkTheme,
    //   initialBinding: GeneralBindings(),
    //   getPages: AppRoutes.pages,
    //   /// Show Loader or Circular Progress Indicator meanwhile Authentication Repository is deciding to show relevant screen.
    //   home: Scaffold(backgroundColor: AColors.primary, body: Center(child:  CircularProgressIndicator(color: Colors.white))),
      home: OnBoardingScreen(),
     );
  }


















}