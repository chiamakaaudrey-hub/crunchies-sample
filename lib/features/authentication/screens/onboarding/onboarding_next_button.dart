import 'package:crunchies/utilities/device/device_utilities.dart';
import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';

import '../../../../utilities/constants/colors.dart';
import '../../../../utilities/constants/sizes.dart';
import '../../../../utilities/helpers/helper_functions.dart' show HelperFunctions;
import '../../controllers/onboarding_controller.dart';

class OnBoardingNextButton extends StatelessWidget {
  const OnBoardingNextButton({
    super.key,
  });

  @override
  Widget build(BuildContext context) {

    final dark = HelperFunctions.isDarkMode(context);
    return Positioned(
        right: ASizes.defaultSpace,
        bottom: DeviceUtilities.getBottomNavigationBarHeight(),
        child: ElevatedButton(
          onPressed: () => OnBoardingController.instance.nextPage(),
          style: ElevatedButton.styleFrom(
              shape: CircleBorder(),
              backgroundColor: dark ? AColors.primary : AColors.black),
          child: Icon(Iconsax.arrow_right_3),
        ));
  }
}