import 'package:flutter/material.dart';

extension ContextExtension on BuildContext {
  // show snackbar
  void myshowSnackBar(SnackBar snackBar) {
    ScaffoldMessenger.of(this).showSnackBar(snackBar);
  }

  // get screen full height
  double get screenHeight => MediaQuery.of(this).size.height;

  // get screen full width
  double get screenWidth => MediaQuery.of(this).size.width;

  EdgeInsets get viewPadding => MediaQuery.of(this).viewPadding;

  /// Extension method on BuildContext for viewInsets
  EdgeInsets get viewInsets => MediaQuery.of(this).viewInsets;

  bool get isMobile => MediaQuery.of(this).size.width < 650;

  bool get isTablet => MediaQuery.of(this).size.width < 1024 && MediaQuery.of(this).size.width >= 650;

  bool get isDesktop => MediaQuery.of(this).size.width >= 1024;
}
