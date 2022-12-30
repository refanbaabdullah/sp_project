import 'package:flutter/material.dart';

import '../HelpBoxDecoration.dart';
import '../HelpImage.dart';

class ImageUrl extends StatefulWidget {
  String url;
  BoxFit? fit;
  double? height;
  double? width;
  BorderRadius? borderRadius;

  ImageUrl(
      {required this.url,
      this.fit,
      this.borderRadius,
      this.height,
      this.width});

  @override
  State<ImageUrl> createState() => _ImageUrlState();
}

class _ImageUrlState extends State<ImageUrl> {
  bool stute = true;
  late ImageProvider<Object> image;

  @override
  Widget build(BuildContext context) {
    if (stute)
      image = NetworkImage(
        widget.url,
      );
    return Container(
      height: widget.height,
      width: widget.width,
      decoration: HelpBoxDecoration.Material(borderRadius: widget.borderRadius)
          .copyWith(
              image: DecorationImage(
        fit: widget.fit == null ? BoxFit.fill : widget.fit,
        onError: (e, ee) {
          setState(() {
            print(HelpImage.error);
            image = AssetImage(HelpImage.error);
            stute = false;
          });
        },
        image: image,
      )),
    );
  }
}
