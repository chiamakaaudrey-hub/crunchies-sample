import 'package:flutter/material.dart';
import '../../../utilities/constants/colors.dart';
import '../../../utilities/helpers/helper_functions.dart';

class FormDivider extends StatelessWidget {
  const FormDivider({
    super.key,
    required this.dividerText,
  });

  final String dividerText;

  @override
  Widget build(BuildContext context) {
    final dark = HelperFunctions.isDarkMode(context);
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Flexible(
            child: Divider(color: dark ? AColors.darkerGrey : AColors.grey, thickness: 0.5, indent: 60, endIndent: 5)),
        Text(dividerText, style: Theme.of(context).textTheme.labelMedium),
        Flexible(
            child: Divider(color: dark ? AColors.darkerGrey : AColors.grey, thickness: 0.5, indent: 5, endIndent: 60)),
      ],
    );
  }
}
