import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';

extension BuildContextX on BuildContext {
  navigateTo(Route route) => Navigator.push(this, route);

  navigateReplace(Route route) => Navigator.pushReplacement(this, route);

  pop() => Navigator.pop(this);

  showToast({required String msg}) => Fluttertoast.showToast(msg: msg);
}
