import 'package:flutter/material.dart';

import '../../../Model/AirlinesFlight.dart';
import '../SizeContext.dart';

class WClick extends StatefulWidget {
  // AirlinesFlight model;
  bool stust;

  WClick(this.stust);

  @override
  State<WClick> createState() => _WClickState();
}

class _WClickState extends State<WClick> {
  @override
  Widget build(BuildContext context) {
    SizeContext sizeContext = SizeContext(context: context);

    return InkWell(
      onTap: () {
        setState(() {
          widget.stust = !widget.stust;
        });
      },
      child: Icon(
        widget.stust ? Icons.add_circle_outline_outlined : Icons.check_sharp,
        size: sizeContext.width / 10,
        color: widget.stust ? Colors.black : Colors.blue,
      ),
    );
  }
}
