import 'package:crunchies/features/authentication/screens/login/widgets/location_screen.dart';
import 'package:flutter/material.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:get/get_navigation/src/extension_navigation.dart';
import '../../../../../utilities/constants/colors.dart';


class PhoneNoAuth extends StatelessWidget {
  final String phoneNumber;

  const PhoneNoAuth({
    super.key,
    required this.phoneNumber,
  });

  String maskPhoneNumber(String phone) {
    if (phone.length < 11) return phone;

    return '${phone.substring(0, 3)}******${phone.substring(phone.length - 4)}';
  }

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => FocusScope.of(context).unfocus(),
      child: Scaffold(
        backgroundColor: AColors.background,
        body: SafeArea(
          child: SingleChildScrollView(
            padding: const EdgeInsets.symmetric(
              horizontal: 24,
              vertical: 24,
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                /// Header
                RichText(
                  text: TextSpan(
                    children: [
                      TextSpan(
                        text: 'Welcome to ',
                        style: TextStyle(
                          color: AColors.navy,
                          fontSize: 22,
                          fontWeight: FontWeight.w700,
                        ),
                      ),
                      TextSpan(
                        text: 'CRUNCHIES.',
                        style: TextStyle(
                          color: AColors.primaryRed,
                          fontSize: 22,
                          fontWeight: FontWeight.w700,
                        ),
                      ),
                    ],
                  ),
                ),

                const SizedBox(height: 10),

                Text(
                  'Please confirm your phone number',
                  style: TextStyle(
                    color: AColors.textGrey,
                    fontSize: 16,
                  ),
                ),

                const SizedBox(height: 120),

                /// Phone Icon
                Center(
                  child: Container(
                    width: 170,
                    height: 170,
                    decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      color: Colors.white,
                      border: Border.all(
                        color: AColors.primaryRed,
                        width: 3,
                      ),
                    ),
                    child: Center(
                      child: Container(
                        width: 130,
                        height: 130,
                        decoration: BoxDecoration(
                          shape: BoxShape.circle,
                          color: AColors.lightPink,
                        ),
                        child: Icon(
                          Icons.phone_in_talk_rounded,
                          color: AColors.primaryRed,
                          size: 55,
                        ),
                      ),
                    ),
                  ),
                ),

                const SizedBox(height: 120),

                /// Confirmation Text
                Center(
                  child: Column(
                    children: [
                      Text(
                        'Confirm your added phone number',
                        style: TextStyle(
                          color: AColors.textGrey,
                          fontSize: 18,
                          fontWeight: FontWeight.w500,
                        ),
                      ),

                      const SizedBox(height: 8),

                      Text(
                        maskPhoneNumber(phoneNumber),
                        style: TextStyle(
                          color: AColors.navy,
                          fontSize: 22,
                          fontWeight: FontWeight.w700,
                        ),
                      ),
                    ],
                  ),
                ),

                const SizedBox(height: 120),

                /// Label
                Text(
                  'Confirm Phone Number',
                  style: TextStyle(
                    color: AColors.textGrey,
                    fontSize: 18,
                    fontWeight: FontWeight.w500,
                  ),
                ),

                const SizedBox(height: 12),

                /// Phone Input Row
                Row(
                  children: [
                    Container(
                      width: 120,
                      height: 60,
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(16),
                        border: Border.all(
                          color: AColors.border,
                        ),
                      ),
                      child: const Row(
                        mainAxisAlignment:
                        MainAxisAlignment.center,
                        children: [
                          Text(
                            '+234',
                            style: TextStyle(
                              fontSize: 16,
                              fontWeight: FontWeight.w700,
                            ),
                          ),
                          SizedBox(width: 10),
                          Text(
                            '🇳🇬',
                            style: TextStyle(
                              fontSize: 22,
                            ),
                          ),
                        ],
                      ),
                    ),

                    const SizedBox(width: 12),

                    Expanded(
                      child: TextFormField(
                        keyboardType: TextInputType.phone,
                        decoration: InputDecoration(
                          hintText:
                          'Your phone number',
                          hintStyle: TextStyle(
                            color: Colors.grey.shade400,
                          ),
                          filled: true,
                          fillColor: Colors.white,
                          contentPadding:
                          const EdgeInsets.symmetric(
                            horizontal: 20,
                            vertical: 18,
                          ),
                          border: OutlineInputBorder(
                            borderRadius:
                            BorderRadius.circular(
                                16),
                          ),
                          enabledBorder:
                          OutlineInputBorder(
                            borderRadius:
                            BorderRadius.circular(
                                16),
                            borderSide: BorderSide(
                              color: AColors.border,
                            ),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),

                const SizedBox(height: 120),

                /// Continue Button
                SizedBox(
                  width: double.infinity,
                  height: 64,
                  child: ElevatedButton(
                    onPressed: () {
                      Get.to(() => const LocationScreen());
                    },
                    style: ElevatedButton.styleFrom(
                      backgroundColor: AColors.buttonRed,
                      elevation: 0,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(16),
                      ),
                    ),
                    child: const Text(
                      'Continue',
                      style: TextStyle(
                        fontSize: 20,
                        color: Colors.white,
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                  ),
                ),
                ]),
            ),
          ),
        ),
    );
  }
}