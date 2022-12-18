import 'package:flutter/material.dart';

class HelpBoxDecoration {
  static BoxDecoration Existing() => BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(25),
          boxShadow: [
            BoxShadow(
              color: Colors.grey.withOpacity(0.3),
              spreadRadius: 2,
              blurRadius: 7,
              offset: Offset(0, 3), // changes position of shadow
            ),
          ]);

  static InputDecoration Inputsensitivedata(String label) => InputDecoration(
        label: Text(label),
        border: OutlineInputBorder().copyWith(
          borderRadius: BorderRadius.circular(15),
        ),
      );



  static InputDecoration InputUISearch(String label) => InputDecoration(
      // icon: Icon(Icons.search),
      // label: Text(),
      hintText: label,
      // iconColor: Theme.of(context).primaryColor,
      border: InputBorder.none);

  static BoxDecoration Material(
          {double? elevation, BorderRadius? borderRadius}) =>
      BoxDecoration(
          color: Colors.white,
          borderRadius:
              borderRadius == null ? BorderRadius.circular(25) : borderRadius,
          boxShadow: [
            BoxShadow(
              color: Colors.grey.withOpacity(0.3),
              spreadRadius: elevation == null ? 1 : elevation,
              blurRadius: 7,
              offset: Offset(0, 3), // changes position of shadow
            ),
          ]);
}
