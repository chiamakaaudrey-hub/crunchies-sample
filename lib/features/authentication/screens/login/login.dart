import 'package:crunchies/features/authentication/screens/login/widgets/login_header.dart';
import 'package:crunchies/utilities/constants/text_strings.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../../../../common/styles/spacing_styles.dart';
import '../../../../common/widgets/login & signup/form_divider.dart';
import '../../../../utilities/constants/sizes.dart';
import '../../../../utilities/helpers/helper_functions.dart';


class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final dark = HelperFunctions.isDarkMode(context);
    return Scaffold(
      body: SingleChildScrollView(
        child: Padding(
          padding: SpacingStyle.paddingWithAppBarHeight,
          child: Column(
            children: [
              /// Header
              LoginHeader(),

              /// Form
              // TLoginForm(),

              /// Divider
              FormDivider(dividerText: TextStrings.orSignInWith.capitalize!),
              SizedBox(width: ASizes.spaceBtwSections),

              /// Footer
              // TSocialButtons()
            ],
          ),
        ),
      ),
    );
  }
}





