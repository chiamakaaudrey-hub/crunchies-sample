import 'package:crunchies/utilities/constants/colors.dart';
import 'package:crunchies/utilities/device/device_utilities.dart';
import 'package:flutter/material.dart';
import '../../../../utilities/constants/sizes.dart';
import '../../controllers/onboarding_controller.dart';

class OnBoardingSkip extends StatelessWidget {
  const OnBoardingSkip({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Positioned(
      bottom: DeviceUtilities.getBottomNavigationBarHeight(),
      left: ASizes.defaultSpace,
      child: TextButton(
          onPressed: () => OnBoardingController.instance.skipPage(), style: TextButton.styleFrom(foregroundColor: AColors.skip),
          child: Text('Skip', style: TextStyle(fontSize: 18,
            fontWeight: FontWeight.w600))));
  }
}