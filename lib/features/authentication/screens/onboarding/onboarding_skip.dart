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
      top: DeviceUtilities.getAppBarHeight(),
      right: ASizes.defaultSpace,
      child: TextButton(
          onPressed: () => OnBoardingController.instance.skipPage(),
          child: Text('Skip')));
  }
}