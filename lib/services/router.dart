import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class NavigationMethods {

  void navigateToPage(BuildContext context, Widget page) {
    Navigator.push(
      context,
      MaterialPageRoute(builder: (context) => page),
    );
  }

  void goBack(BuildContext context) {
    Navigator.pop(context);
  }

  void replacePage(BuildContext context, Widget page) {
    Navigator.pushReplacement(
      context,
      MaterialPageRoute(builder: (context) => page),
    );
  }

  void popUntilHome(BuildContext context, Widget page) {
    Navigator.popUntil(context, (page) => page.isFirst);
  }
}