import 'package:flutter/material.dart';

class ApplicationConst {
  final BuildContext context;

  ApplicationConst(this.context);
  Size get SIZE => MediaQuery.of(context).size;

  double get marginRight => SIZE.width / 15;

  double get heightIcon => SIZE.height / 30;
}
