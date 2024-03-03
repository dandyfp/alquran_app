import 'package:flutter/material.dart';

Map<double, SizedBox> _verticalSpaces = {};
Map<double, SizedBox> _horizontalSpaces = {};

SizedBox verticalSpace(double height) {
  if (!_verticalSpaces.containsKey(height)) {
    _verticalSpaces[height] = SizedBox(
      height: height,
    );
  }
  return _verticalSpaces[height]!;
}

SizedBox horizontalSpace(double widht) {
  if (!_horizontalSpaces.containsKey(widht)) {
    _horizontalSpaces[widht] = SizedBox(
      width: widht,
    );
  }
  return _horizontalSpaces[widht]!;
}

double screenWidth(BuildContext context) => MediaQuery.of(context).size.width;
double screenHeight(BuildContext context) => MediaQuery.of(context).size.height;

bool screenCompat(BuildContext context) => screenWidth(context) < 600; // Phone in portrait
bool screenMedium(BuildContext context) =>
    screenWidth(context) >= 600 && screenWidth(context) < 840; // Tablet in portrait Foldable in portrait (unfolded)
bool screenExpanded(BuildContext context) =>
    screenWidth(context) >= 840 && screenWidth(context) < 1200; // Phone in landscape Tablet in landscape Foldable in landscape (unfolded) Desktop
bool screenLarge(BuildContext context) => screenWidth(context) >= 1200 && screenWidth(context) < 1600; // Desktop
bool screenExtraLarge(BuildContext context) => screenWidth(context) >= 1600; // Desktop ultra wide
