import 'package:flutter/material.dart';

class AppTypography {
  static TextStyle? bodyText(BuildContext context) {
    return Theme.of(context).textTheme.bodyText1;
  }

  static TextStyle? headline6(BuildContext context) {
    return Theme.of(context).textTheme.headline6;
  }

  static TextStyle? headline5(BuildContext context) {
    return Theme.of(context).textTheme.headline5;
  }

  static TextStyle? subtitle1(BuildContext context) {
    return Theme.of(context).textTheme.subtitle1;
  }

  static TextStyle? subtitle2(BuildContext context) {
    return Theme.of(context).textTheme.subtitle2;
  }

  static TextStyle? caption(BuildContext context) {
    return Theme.of(context).textTheme.caption;
  }
}
