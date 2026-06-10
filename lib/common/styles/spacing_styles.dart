import 'package:flutter/material.dart';
import '../../utilities/constants/sizes.dart';



class SpacingStyle {
  static EdgeInsetsGeometry paddingWithAppBarHeight = EdgeInsets.only(
    top: ASizes.appBarHeight,
    left: ASizes.defaultSpace,
    bottom: ASizes.defaultSpace,
    right: ASizes.defaultSpace,
  );
}