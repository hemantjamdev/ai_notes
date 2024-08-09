import 'package:flutter/material.dart';

extension BuildContextX on BuildContext {
  navigateTo(Route route) => Navigator.push(this, route);

  navigateReplace(Route route) => Navigator.pushReplacement(this, route);

  navigateBack(Route? route) => Navigator.pop(this, route);
}
