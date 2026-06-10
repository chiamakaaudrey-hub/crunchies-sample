import 'dart:math';

import 'package:crunchies/utilities/device/device_utilities.dart';
import 'package:flutter/material.dart';
import 'package:get/get_state_manager/src/rx_flutter/rx_obx_widget.dart';
import 'package:iconsax/iconsax.dart';

import '../../../../utilities/constants/colors.dart';
import '../../../../utilities/constants/sizes.dart';
import '../../../../utilities/helpers/helper_functions.dart';
import '../../controllers/onboarding_controller.dart';

class OnBoardingNextButton extends StatelessWidget {
  const OnBoardingNextButton({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final controller = OnBoardingController.instance;
    final dark = HelperFunctions.isDarkMode(context);
    return Positioned(
        right: ASizes.defaultSpace,
        bottom: DeviceUtilities.getBottomNavigationBarHeight(),
        child: Obx(
                () => ElevatedButton(
                onPressed: controller.nextPage,
                style: ElevatedButton.styleFrom(backgroundColor: AColors.next, padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 12)),
                child: Row(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    const Icon(Iconsax.arrow_right_1, color: Colors.white, size: 24),
                    const SizedBox(width: 9),
                    Text(controller.currentPageIndex.value == 3 ? 'Get Started' : 'Next', style: const TextStyle(color: Colors.white, fontSize: 17, fontWeight: FontWeight.w400),
                    ),


                  ],
                ),
        ),
        )
    );
  }
}