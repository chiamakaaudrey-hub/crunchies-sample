import 'package:crunchies/utilities/constants/image_strings.dart';
import 'package:crunchies/utilities/constants/text_strings.dart';
import 'package:flutter/material.dart';
import '../../../../../utilities/constants/sizes.dart';
import '../../../../../utilities/helpers/helper_functions.dart';

class LoginHeader extends StatelessWidget {
  const LoginHeader({
    super.key,
  });


  @override
  Widget build(BuildContext context) {
    final dark = HelperFunctions.isDarkMode(context);
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Image(
          height: 100,
          image: AssetImage(dark ? ImageStrings.lightAppLogo : ImageStrings.darkAppLogo),
        ),
        Text(TextStrings.loginTitle, style: Theme.of(context).textTheme.headlineMedium),
        SizedBox(height: ASizes.sm),
        Text(TextStrings.loginSubTitle, style: Theme.of(context).textTheme.bodyMedium),
      ],
    );
  }
}
