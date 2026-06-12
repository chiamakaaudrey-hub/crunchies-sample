import 'package:crunchies/features/authentication/screens/signup/widgets/phone_no_auth.dart';
import 'package:flutter/material.dart';


class SignupController {
  /// Validate Full Name
  static String? validateName(String? value) {
    if (value == null || value.trim().isEmpty) {
      return 'Full name is required';
    }

    if (value.trim().length < 3) {
      return 'Enter at least 3 characters';
    }

    return null;
  }

  /// Validate Nigerian Phone Number
  static String? validatePhone(String? value) {
    if (value == null || value.trim().isEmpty) {
      return 'Phone number is required';
    }

    final regex =
    RegExp(r'^(070|080|081|090|091)\d{8}$');

    if (!regex.hasMatch(value.trim())) {
      return 'Enter a valid Nigerian phone number';
    }

    return null;
  }

  /// Format Number
  static String formatPhoneNumber(String phone) {
    final cleaned = phone.trim();

    if (cleaned.startsWith('0')) {
      return '+234${cleaned.substring(1)}';
    }

    return cleaned;
  }

  /// Submit Form
  static void submit({
    required BuildContext context,
    required GlobalKey<FormState> formKey,
    required TextEditingController nameController,
    required TextEditingController phoneController,
  }) {
    if (!formKey.currentState!.validate()) {
      return;
    }

    final formattedPhone =
    formatPhoneNumber(phoneController.text);

    Navigator.push(
      context,
      MaterialPageRoute(
        builder: (_) => PhoneNoAuth(
          phoneNumber: formattedPhone,
        ),
      ),
    );
  }
}