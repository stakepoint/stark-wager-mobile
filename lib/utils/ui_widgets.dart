import 'package:flutter/material.dart';
import 'package:starkwager/core/constants/screen_size.dart';

Widget verticalSpace(double spaceLength) {
  return SizedBox(
    height: spaceLength,
  );
}

Widget horizontalSpace(double spaceLength) {
  return SizedBox(
    width: spaceLength,
  );
}

Widget verticalDivider({
  double? height = 1,
  Color? color = Colors.transparent,
  double? width = double.infinity,
}) {
  return Container(
    height: height,
    width: width,
    color: color,
  );
}

Widget horizontalDivider(double width, {Color? color = Colors.grey}) {
  return Container(
    width: width,
    color: color,
  );
}

ScreenSize screenSize(
  BuildContext context,
) =>
    ScreenSize(context: context);
