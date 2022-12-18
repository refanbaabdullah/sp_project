import 'package:flutter/material.dart';

class SizeContext {
  BuildContext context;

  SizeContext({required this.context});

  double _height() => MediaQuery.of(context).size.height;

  double _width() => MediaQuery.of(context).size.width;

  double get height => _height();

  double get width => _width();
}
